import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/constants/constants.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required int id,
    required String username,
    @HttpImageConverter() required String avatar,
    required String nickname,
    @UserRoleConverter() required UserRole role,
    required int roomId,
    required bool deleted,
    @DateTimeConverter() required DateTime createAt,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, Object?> json) =>
      _$UserInfoFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required int userId,
    required String? nickname,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class UpdateUserResponse with _$UpdateUserResponse {
  const factory UpdateUserResponse({
    required UserInfo user,
  }) = _UpdateUserResponse;

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class ChangeAvatarResponse with _$ChangeAvatarResponse {
  const factory ChangeAvatarResponse({
    @HttpImageConverter() required String avatar,
  }) = _ChangeAvatarResponse;

  factory ChangeAvatarResponse.fromJson(Map<String, Object?> json) =>
      _$ChangeAvatarResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, Object?> json) =>
      _$ChangePasswordRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class FindUserResponse with _$FindUserResponse {
  const factory FindUserResponse({
    required UserInfo? user,
  }) = _FindUserResponse;

  factory FindUserResponse.fromJson(Map<String, Object?> json) =>
      _$FindUserResponseFromJson(json);
}
