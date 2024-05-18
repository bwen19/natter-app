import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/repos/repos.dart';

final incomingFriendsProvider = Provider.autoDispose<List<FriendInfo>>((ref) {
  final friends = ref.watch(chatProvider.select((v) => v.friends));
  return [
    for (final friend in friends)
      if (friend.status == FriendStatus.adding && friend.first) friend,
  ];
});

final outgoingFriendsProvider = Provider.autoDispose<List<FriendInfo>>((ref) {
  final friends = ref.watch(chatProvider.select((v) => v.friends));
  return [
    for (final friend in friends)
      if (friend.status == FriendStatus.adding && !friend.first) friend,
  ];
});

final searchUserProvider =
    AutoDisposeNotifierProvider<_SearchUserNotifier, UserInfo?>(
  _SearchUserNotifier.new,
);

class _SearchUserNotifier extends AutoDisposeNotifier<UserInfo?> {
  @override
  UserInfo? build() {
    return null;
  }

  void onSearch(String keyword) async {
    state = await ref.read(privateRepoProvider).findUser(keyword);
  }
}

final searchUserRelationProvider = Provider.autoDispose((ref) {
  final user = ref.watch(searchUserProvider);
  return ref.watch(relationProvider(user?.id ?? 0));
});
