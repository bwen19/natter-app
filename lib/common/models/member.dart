import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/constants/constants.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class MemberInfo with _$MemberInfo {
  const factory MemberInfo({
    required int id,
    required String name,
    @HttpImageConverter() required String avatar,
    @MemberRankConverter() required MemberRank rank,
    @DateTimeConverter() required DateTime joinAt,
  }) = _MemberInfo;

  factory MemberInfo.fromJson(Map<String, Object?> json) =>
      _$MemberInfoFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class AddMembersRequest with _$AddMembersRequest {
  const factory AddMembersRequest({
    required int roomId,
    required List<int> membersId,
  }) = _AddMembersRequest;

  factory AddMembersRequest.fromJson(Map<String, dynamic> json) =>
      _$AddMembersRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class AddMembersResponse with _$AddMembersResponse {
  const factory AddMembersResponse({
    required int roomId,
    required List<MemberInfo> members,
  }) = _AddMembersResponse;

  factory AddMembersResponse.fromJson(Map<String, dynamic> json) =>
      _$AddMembersResponseFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class DeleteMembersRequest with _$DeleteMembersRequest {
  const factory DeleteMembersRequest({
    required int roomId,
    required List<int> membersId,
  }) = _DeleteMembersRequest;

  factory DeleteMembersRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteMembersRequestFromJson(json);
}

@Freezed(copyWith: false, equal: false)
class DeleteMembersResponse with _$DeleteMembersResponse {
  const factory DeleteMembersResponse({
    required int roomId,
    required List<int> membersId,
  }) = _DeleteMembersResponse;

  factory DeleteMembersResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteMembersResponseFromJson(json);
}
