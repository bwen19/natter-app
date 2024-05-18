import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/room.dart';

part 'friend.freezed.dart';
part 'friend.g.dart';

@freezed
class FriendInfo with _$FriendInfo {
  const factory FriendInfo({
    required int id,
    required String username,
    @HttpImageConverter() required String avatar,
    required String nickname,
    @FriendStatusConverter() required FriendStatus status,
    required int roomId,
    required bool first,
    @DateTimeConverter() required DateTime createAt,
  }) = _FriendInfo;

  factory FriendInfo.fromJson(Map<String, Object?> json) =>
      _$FriendInfoFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class AddFriendRequest with _$AddFriendRequest {
  const factory AddFriendRequest({
    required int friendId,
  }) = _AddFriendRequest;

  factory AddFriendRequest.fromJson(Map<String, dynamic> json) =>
      _$AddFriendRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class AddFriendResponse with _$AddFriendResponse {
  const factory AddFriendResponse({
    required FriendInfo friend,
  }) = _AddFriendResponse;

  factory AddFriendResponse.fromJson(Map<String, dynamic> json) =>
      _$AddFriendResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class AcceptFriendRequest with _$AcceptFriendRequest {
  const factory AcceptFriendRequest({
    required int friendId,
  }) = _AcceptFriendRequest;

  factory AcceptFriendRequest.fromJson(Map<String, dynamic> json) =>
      _$AcceptFriendRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class AcceptFriendResponse with _$AcceptFriendResponse {
  const factory AcceptFriendResponse({
    required FriendInfo friend,
    required RoomInfo room,
  }) = _AcceptFriendResponse;

  factory AcceptFriendResponse.fromJson(Map<String, dynamic> json) =>
      _$AcceptFriendResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class RefuseFriendRequest with _$RefuseFriendRequest {
  const factory RefuseFriendRequest({
    required int friendId,
  }) = _RefuseFriendRequest;

  factory RefuseFriendRequest.fromJson(Map<String, dynamic> json) =>
      _$RefuseFriendRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class RefuseFriendResponse with _$RefuseFriendResponse {
  const factory RefuseFriendResponse({
    required int friendId,
  }) = _RefuseFriendResponse;

  factory RefuseFriendResponse.fromJson(Map<String, dynamic> json) =>
      _$RefuseFriendResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class DeleteFriendRequest with _$DeleteFriendRequest {
  const factory DeleteFriendRequest({
    required int friendId,
  }) = _DeleteFriendRequest;

  factory DeleteFriendRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteFriendRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class DeleteFriendResponse with _$DeleteFriendResponse {
  const factory DeleteFriendResponse({
    required int friendId,
    required int roomId,
  }) = _DeleteFriendResponse;

  factory DeleteFriendResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteFriendResponseFromJson(json);
}
