import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/repos/repos.dart';

final authProvider = Provider(_AuthController.new);

final authStateProvider =
    AsyncNotifierProvider<_AuthStateNotifier, bool>(_AuthStateNotifier.new);

final authUserProvider =
    NotifierProvider<_AuthUserNotifier, UserInfo?>(_AuthUserNotifier.new);

class _AuthController {
  const _AuthController(this.ref);
  final ProviderRef ref;

  Future<void> login(String username, String password) async {
    final rsp = await ref
        .read(authRepoProvider)
        .login(LoginRequest(username: username, password: password));

    ref.read(authUserProvider.notifier).setUser(rsp.user);
    await ref.read(jwtTokenProvider.notifier).setToken(
          rsp.accessToken,
          rsp.refreshToken,
          rsp.expireAt,
        );
    await ref.read(authStateProvider.notifier).signIn();
  }

  Future<void> logout() async {
    try {
      final refreshToken = ref.read(jwtTokenProvider).refreshToken;
      await ref
          .read(authRepoProvider)
          .logout(LogoutRequest(refreshToken: refreshToken));
    } finally {
      await clearAuth();
    }
  }

  Future<void> clearAuth() async {
    await ref.read(authStateProvider.notifier).signOut();
    ref.read(authUserProvider.notifier).removeUser();
    ref.read(jwtTokenProvider.notifier).removeToken();
  }
}

class _AuthStateNotifier extends AsyncNotifier<bool> {
  Future<bool> _autoLogin() async {
    try {
      final refreshToken = ref.read(jwtTokenProvider).refreshToken;
      final rsp = await ref
          .read(authRepoProvider)
          .autoLogin(AutoLoginRequest(refreshToken: refreshToken));

      ref.read(authUserProvider.notifier).setUser(rsp.user);
      await ref
          .read(jwtTokenProvider.notifier)
          .setToken(rsp.accessToken, rsp.refreshToken, rsp.expireAt);
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> build() {
    return Future.delayed(const Duration(seconds: 2), () => _autoLogin());
  }

  Future<void> signIn() async {
    state = await AsyncValue.guard(() async {
      return true;
    });
  }

  Future<void> signOut() async {
    state = await AsyncValue.guard(() async {
      return false;
    });
  }
}

class _AuthUserNotifier extends Notifier<UserInfo?> {
  @override
  UserInfo? build() {
    return null;
  }

  void setUser(UserInfo user) {
    state = user;
  }

  void removeUser() {
    state = null;
  }

  void setAvatar(String avatar) {
    state = state!.copyWith(avatar: avatar);
  }
}
