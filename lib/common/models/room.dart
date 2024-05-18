import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class RoomInfo with _$RoomInfo {
  const factory RoomInfo({
    required int id,
    required String name,
    @HttpImageConverter() required String cover,
    @RoomCategoryConverter() required RoomCategory category,
    required int unreads,
    @DateTimeConverter() required DateTime createAt,
    required List<MemberInfo> members,
    required List<MessageInfo> messages,
  }) = _RoomInfo;

  factory RoomInfo.fromJson(Map<String, dynamic> json) =>
      _$RoomInfoFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class NewRoomRequest with _$NewRoomRequest {
  const factory NewRoomRequest({
    required String name,
    required List<int> membersId,
  }) = _NewRoomRequest;

  factory NewRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$NewRoomRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class NewRoomResponse with _$NewRoomResponse {
  const factory NewRoomResponse({
    required RoomInfo room,
  }) = _NewRoomResponse;

  factory NewRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$NewRoomResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class ChangeCoverResponse with _$ChangeCoverResponse {
  const factory ChangeCoverResponse({
    required int roomId,
    @HttpImageConverter() required String cover,
  }) = _ChangeCoverResponse;

  factory ChangeCoverResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeCoverResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class UpdateRoomRequest with _$UpdateRoomRequest {
  const factory UpdateRoomRequest({
    required int roomId,
    required String name,
  }) = _UpdateRoomRequest;

  factory UpdateRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRoomRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class UpdateRoomResponse with _$UpdateRoomResponse {
  const factory UpdateRoomResponse({
    required int roomId,
    required String name,
  }) = _UpdateRoomResponse;

  factory UpdateRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateRoomResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class DeleteRoomRequest with _$DeleteRoomRequest {
  const factory DeleteRoomRequest({
    required int roomId,
  }) = _DeleteRoomRequest;

  factory DeleteRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteRoomRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class DeleteRoomResponse with _$DeleteRoomResponse {
  const factory DeleteRoomResponse({
    required int roomId,
  }) = _DeleteRoomResponse;

  factory DeleteRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteRoomResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class LeaveRoomRequest with _$LeaveRoomRequest {
  const factory LeaveRoomRequest({
    required int roomId,
  }) = _LeaveRoomRequest;

  factory LeaveRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveRoomRequestFromJson(json);
}
