import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/constants/constants.dart';

final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());

final jwtTokenProvider =
    NotifierProvider<JwtTokenNotifier, JwtToken>(JwtTokenNotifier.new);

class JwtTokenNotifier extends Notifier<JwtToken> {
  late SharedPreferences _prefs;

  @override
  JwtToken build() {
    _prefs = ref.watch(sharedPreferencesProvider);
    return JwtToken(
      accessToken: '',
      refreshToken: _prefs.getString(kRefreshTokenKey) ?? '',
      expireAt: DateTime.now(),
    );
  }

  Future<void> setToken(
    String accessToken,
    String refreshToken,
    DateTime expireAt,
  ) async {
    await _prefs.setString(kRefreshTokenKey, refreshToken);
    state = state.copyWith(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expireAt: expireAt,
    );
  }

  Future<void> removeToken() async {
    await _prefs.remove(kRefreshTokenKey);
    state = state.copyWith(accessToken: '', refreshToken: '');
  }
}
