import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';

final searchFriendsProvider =
    AutoDisposeNotifierProvider<_SearchFriendsNotifier, List<FriendInfo>>(
  _SearchFriendsNotifier.new,
);

class _SearchFriendsNotifier extends AutoDisposeNotifier<List<FriendInfo>> {
  @override
  List<FriendInfo> build() {
    return [];
  }

  void onSearch(String keyword) async {
    final friends = ref.watch(friendsProvider);
    state = [
      for (final friend in friends)
        if (friend.nickname.contains(keyword) ||
            friend.username.contains(keyword))
          friend,
    ];
  }
}

final searchRoomsProvider =
    AutoDisposeNotifierProvider<_SearchRoomsNotifier, List<RoomState>>(
  _SearchRoomsNotifier.new,
);

class _SearchRoomsNotifier extends AutoDisposeNotifier<List<RoomState>> {
  @override
  List<RoomState> build() {
    return [];
  }

  void onSearch(String keyword) async {
    final rooms = ref.watch(roomsProvider);
    state = [
      for (final room in rooms)
        if (room.name.contains(keyword) || room.content.contains(keyword)) room,
    ];
  }
}
