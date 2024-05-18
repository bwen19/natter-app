import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/user.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@Freezed(copyWith: false, equal: false)
class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    required String username,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, Object?> json) =>
      _$LoginRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    required UserInfo user,
    required String accessToken,
    required String refreshToken,
    @DateTimeConverter() required DateTime expireAt,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, Object?> json) =>
      _$LoginResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class AutoLoginRequest with _$AutoLoginRequest {
  factory AutoLoginRequest({
    required String refreshToken,
  }) = _AutoLoginRequest;

  factory AutoLoginRequest.fromJson(Map<String, Object?> json) =>
      _$AutoLoginRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class RenewTokenRequest with _$RenewTokenRequest {
  const factory RenewTokenRequest({
    required String refreshToken,
  }) = _RenewTokenRequest;

  factory RenewTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RenewTokenRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class RenewTokenResponse with _$RenewTokenResponse {
  factory RenewTokenResponse({
    required String accessToken,
    required String refreshToken,
    @DateTimeConverter() required DateTime expireAt,
  }) = _RenewTokenResponse;

  factory RenewTokenResponse.fromJson(Map<String, Object?> json) =>
      _$RenewTokenResponseFromJson(json);
}

@freezed
class LogoutRequest with _$LogoutRequest {
  const factory LogoutRequest({
    required String refreshToken,
  }) = _LogoutRequest;

  factory LogoutRequest.fromJson(Map<String, dynamic> json) =>
      _$LogoutRequestFromJson(json);
}
