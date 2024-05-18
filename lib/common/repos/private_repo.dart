import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/repos/repos.dart';

final privateRepoProvider = Provider(PrivateRepo.new);

class PrivateRepo {
  PrivateRepo(this.ref);
  final Ref ref;

  PrivateClient get _privateClient => ref.read(privateClientProvider);

  Future<void> changePassword(ChangePasswordRequest req) async {
    final uri = _privateClient.parseUrl('/user/password');
    final body = jsonEncode(req.toJson());
    final rsp = await _privateClient.patch(uri, body: body);
    parseResponse(rsp);
  }

  Future<UpdateUserResponse> updateUser(UpdateUserRequest req) async {
    final uri = _privateClient.parseUrl('/user');
    final body = jsonEncode(req.toJson());
    final rsp = await _privateClient.patch(uri, body: body);
    return UpdateUserResponse.fromJson(parseResponse(rsp));
  }

  Future<ChangeAvatarResponse> changeAvatar(String filePath) async {
    final rsp = await _privateClient.uploadFile('/user/avatar', filePath);
    return ChangeAvatarResponse.fromJson(parseResponse(rsp));
  }

  Future<SendFileResponse> sendFile(String filePath) async {
    final rsp = await _privateClient.uploadFile('/message/file', filePath);
    return SendFileResponse.fromJson(parseResponse(rsp));
  }

  Future<void> changeCover(int roomId, String filePath) async {
    await _privateClient.uploadFile('/room/cover/$roomId', filePath);
  }

  Future<UserInfo?> findUser(String keyword) async {
    final uri = _privateClient.parseUrl('/user/name/$keyword');
    final rsp = await _privateClient.get(uri);
    final res = FindUserResponse.fromJson(parseResponse(rsp));
    return res.user;
  }
}
