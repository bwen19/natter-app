import 'dart:convert';
import 'package:async/async.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/repos/repos.dart';
import 'package:natter/common/models/models.dart';

final privateClientProvider = Provider(PrivateClient.new);

Future<String>? accessTokenFuture;

class PrivateClient extends http.BaseClient {
  PrivateClient(this.ref);
  final Ref ref;

  JwtToken get _jwtToken => ref.read(jwtTokenProvider);

  Uri parseUrl(String url) => Uri.parse('$kHttpUrl/api$url');

  Future<http.Response> uploadFile(String url, String filePath) async {
    try {
      final accessToken = await getAccessToken();

      var request = http.MultipartRequest('POST', parseUrl(url));
      var headers = <String, String>{
        'Content-Type': 'multipart/form-data',
        'Authorization': 'Bearer $accessToken',
      };

      var multipartFile = await http.MultipartFile.fromPath(
        'file',
        filePath,
        filename: p.basename(filePath),
        contentType: MediaType.parse(lookupMimeType(filePath) ?? 'text/plain'),
      );

      request.files.add(multipartFile);
      request.headers.addAll(headers);
      return http.Response.fromStream(await request.send());
    } on CustomException catch (_) {
      rethrow;
    } catch (_) {
      throw const AppCustomException();
    }
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    var httpClient = http.Client();
    try {
      final splitter = StreamSplitter(request.finalize());

      // first try: add the accessToken in Authorization header
      var accessToken = _jwtToken.accessToken;
      var headers = <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      };

      var response = await httpClient
          .send(_copyRequest(request, splitter.split(), headers))
          .timeout(const Duration(seconds: kTimeoutSeconds));
      if (response.statusCode != 203) {
        return response;
      }

      // retry with new accessToken
      accessToken = await _getNewAccessToken(httpClient);

      headers = <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      };
      return await httpClient
          .send(_copyRequest(request, splitter.split(), headers))
          .timeout(const Duration(seconds: kTimeoutSeconds));
    } on CustomException catch (_) {
      rethrow;
    } catch (_) {
      throw const AppCustomException();
    } finally {
      httpClient.close();
    }
  }

  Future<String> getAccessToken() async {
    var httpClient = http.Client();
    try {
      final accessToken = _jwtToken.expireAt.isAfter(DateTime.now())
          ? _jwtToken.accessToken
          : await _getNewAccessToken(httpClient);
      return accessToken;
    } finally {
      httpClient.close();
    }
  }

  Future<String> _getNewAccessToken(http.Client client) async {
    accessTokenFuture ??= _renewToken(client);
    return accessTokenFuture!;
  }

  Future<String> _renewToken(http.Client client) async {
    try {
      final body = RenewTokenRequest(
        refreshToken: _jwtToken.refreshToken,
      );
      final response = await client.post(
        parseUrl('/auth/renew-token'),
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      final rsp = RenewTokenResponse.fromJson(parseResponse(response));
      await ref
          .read(jwtTokenProvider.notifier)
          .setToken(rsp.accessToken, rsp.refreshToken, rsp.expireAt);
      return rsp.accessToken;
    } on CustomException catch (_) {
      ref.read(authProvider).clearAuth();
      rethrow;
    } catch (_) {
      throw const AppCustomException();
    } finally {
      accessTokenFuture = null;
    }
  }

  /// Returns a copy of [original] with the given [body].
  http.StreamedRequest _copyRequest(
    http.BaseRequest original,
    Stream<List<int>> body,
    Map<String, String> headers,
  ) {
    final request = http.StreamedRequest(original.method, original.url)
      ..contentLength = original.contentLength
      ..followRedirects = original.followRedirects
      ..headers.addAll(headers)
      ..maxRedirects = original.maxRedirects
      ..persistentConnection = original.persistentConnection;

    body.listen(request.sink.add,
        onError: request.sink.addError,
        onDone: request.sink.close,
        cancelOnError: true);

    return request;
  }
}
