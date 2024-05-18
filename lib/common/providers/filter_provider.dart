import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/utils/utils.dart';

final roomsProvider = Provider.autoDispose<List<RoomState>>((ref) {
  final rooms = ref.watch(chatProvider.select((v) => v.rooms));

  return rooms.map((room) {
    final lastMessage = room.messages.lastOrNull;
    final isPublic = room.category == RoomCategory.public;
    return RoomState(
        id: room.id,
        name: room.name,
        cover: room.cover,
        content: lastMessage == null
            ? '[no messages]'
            : convertMessageContent(lastMessage, isPublic),
        sendAt: lastMessage == null ? '' : fmtLastDate(lastMessage.sendAt),
        unreads: room.unreads);
  }).toList();
});

final friendsProvider = Provider.autoDispose<List<FriendInfo>>((ref) {
  final friends = ref.watch(chatProvider.select((v) => v.friends));
  return [
    for (final friend in friends)
      if (friend.status == FriendStatus.accepted) friend,
  ];
});

final relationProvider =
    Provider.autoDispose.family<UserRelation, int>((ref, userId) {
  final authUserId = ref.watch(authUserProvider)?.id;
  if (authUserId != null && userId == authUserId) {
    return UserRelation.userself;
  }

  final friends = ref.watch(chatProvider.select((v) => v.friends));
  final idx = friends.indexWhere((v) => v.id == userId);
  if (idx != -1) {
    final friend = friends[idx];
    if (friend.status == FriendStatus.accepted) {
      return UserRelation.friend;
    } else if (friend.status == FriendStatus.adding) {
      return friend.first ? UserRelation.incoming : UserRelation.outgoing;
    }
  }

  return UserRelation.stranger;
});
