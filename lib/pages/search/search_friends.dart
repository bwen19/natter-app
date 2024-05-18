import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/pages/friends/friend_detail_page.dart';
import 'package:natter/pages/search/search_provider.dart';

class SearchFriends extends ConsumerWidget {
  const SearchFriends({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final friends = ref.watch(searchFriendsProvider);
    if (friends.isEmpty) {
      return const SizedBox();
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Friends',
            style: TextStyle(
              fontSize: 16,
              color: context.colorScheme.outline,
            ),
          ),
        ),
        Card(
          child: ListView.builder(
            itemCount: friends.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final friend = friends[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(friend.avatar),
                  radius: 22,
                ),
                title: Text(
                  friend.nickname,
                  style: context.textTheme.titleMedium,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text('@${friend.nickname}'),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    createRoute((context, animation, secondaryAnimation) =>
                        FriendDetailPage(friend: friend)),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
