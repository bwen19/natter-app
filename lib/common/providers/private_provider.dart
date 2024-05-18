import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/repos/repos.dart';

final privateProvider = Provider(PrivateController.new);

class PrivateController {
  PrivateController(this.ref);
  final ProviderRef ref;

  PrivateRepo get _privateRepo => ref.read(privateRepoProvider);

  Future<void> changePassword(String oldPassword, String newPassword) async {
    final req = ChangePasswordRequest(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
    await _privateRepo.changePassword(req);
  }

  Future<void> updateUser(String nickname) async {
    final userId = ref.read(authUserProvider.select((user) => user!.id));
    final req = UpdateUserRequest(userId: userId, nickname: nickname);
    final rsp = await _privateRepo.updateUser(req);
    ref.read(authUserProvider.notifier).setUser(rsp.user);
  }

  Future<void> changeAvatar(String filePath) async {
    final rsp = await _privateRepo.changeAvatar(filePath);
    ref.read(authUserProvider.notifier).setAvatar(rsp.avatar);
  }

  Future<void> changeCover(int roomId, String filePath) async {
    await _privateRepo.changeCover(roomId, filePath);
  }

  Future<void> sendFile(int roomId, String filePath) async {
    final rsp = await _privateRepo.sendFile(filePath);
    final req = NewMessageRequest(
      roomId: roomId,
      content: rsp.content,
      fileUrl: rsp.fileUrl,
      kind: rsp.kind,
    );
    await ref.read(webSocketProvider).sendMessage(req);
  }
}
