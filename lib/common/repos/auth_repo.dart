import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/repos/parse_response.dart';

final authRepoProvider = Provider((ref) => const AuthRepo());

class AuthRepo {
  const AuthRepo();

  Future<LoginResponse> login(LoginRequest req) async {
    final jsonData = await _send('/login', req.toJson());
    return LoginResponse.fromJson(jsonData);
  }

  Future<LoginResponse> autoLogin(AutoLoginRequest req) async {
    final jsonData = await _send('/auto-login', req.toJson());
    return LoginResponse.fromJson(jsonData);
  }

  Future<void> logout(LogoutRequest req) async {
    await _send('/logout', req.toJson());
  }

  Future<Map<String, dynamic>> _send(String url, Object body) async {
    try {
      final response = await http
          .post(
            Uri.parse('$kHttpUrl/api/auth$url'),
            headers: <String, String>{'Content-Type': 'application/json'},
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: kTimeoutSeconds));
      return parseResponse(response);
    } on CustomException catch (_) {
      rethrow;
    } catch (_) {
      throw const AppCustomException();
    }
  }
}
