import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';

part 'states.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<RoomInfo> rooms,
    required List<FriendInfo> friends,
    required int totalUnreads,
    required int numNewFriends,
    required int currRoomId,
    required int currFriendId,
  }) = _ChatState;
}

@freezed
class RoomState with _$RoomState {
  const factory RoomState({
    required int id,
    required String name,
    required String cover,
    required String content,
    required String sendAt,
    required int unreads,
  }) = _RoomState;
}

@freezed
class JwtToken with _$JwtToken {
  const factory JwtToken({
    required String accessToken,
    required String refreshToken,
    @DateTimeConverter() required DateTime expireAt,
  }) = _JwtToken;
}

@freezed
class UserCandidate with _$UserCandidate {
  const factory UserCandidate({
    required int id,
    required String name,
    required String avatar,
    required bool selected,
    required bool fixed,
  }) = _UserCandidate;
}
