import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@Freezed(copyWith: false, equal: false)
class MessageInfo with _$MessageInfo {
  const factory MessageInfo({
    required int roomId,
    required int senderId,
    required String name,
    @HttpImageConverter() required String avatar,
    required String content,
    @HttpImageConverter() required String fileUrl,
    @MessageKindConverter() required MessageKind kind,
    required bool divide,
    @DateTimeConverter() required DateTime sendAt,
  }) = _MessageInfo;

  factory MessageInfo.fromJson(Map<String, dynamic> json) =>
      _$MessageInfoFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class InitializeRequest with _$InitializeRequest {
  const factory InitializeRequest() = _InitializeRequest;

  factory InitializeRequest.fromJson(Map<String, dynamic> json) =>
      _$InitializeRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class InitializeResponse with _$InitializeResponse {
  const factory InitializeResponse({
    required List<RoomInfo> rooms,
    required List<FriendInfo> friends,
  }) = _InitializeResponse;

  factory InitializeResponse.fromJson(Map<String, dynamic> json) =>
      _$InitializeResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class NewMessageRequest with _$NewMessageRequest {
  const factory NewMessageRequest({
    required int roomId,
    required String content,
    required String fileUrl,
    required MessageKind kind,
  }) = _NewMessageRequest;

  factory NewMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$NewMessageRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class NewMessageResponse with _$NewMessageResponse {
  const factory NewMessageResponse({
    required MessageInfo message,
  }) = _NewMessageResponse;

  factory NewMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$NewMessageResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class SendFileResponse with _$SendFileResponse {
  const factory SendFileResponse({
    required String content,
    required String fileUrl,
    @MessageKindConverter() required MessageKind kind,
  }) = _SendFileResponse;

  factory SendFileResponse.fromJson(Map<String, dynamic> json) =>
      _$SendFileResponseFromJson(json);
}
