import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/widgets/widgets.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/pages/search/search_page.dart';
import 'package:natter/pages/friends/add_friend_page.dart';
import 'package:natter/pages/friends/new_friends_page.dart';
import 'package:natter/pages/friends/friend_detail_page.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                createRoute((context, animation, secondaryAnimation) =>
                    const SearchPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_add_outlined),
            onPressed: () {
              Navigator.of(context).push(
                createRoute((context, animation, secondaryAnimation) =>
                    const AddFriendPage()),
              );
            },
          )
        ],
      ),
      body: const Column(
        children: <Widget>[
          SizedBox(height: 10),
          _NewFriends(),
          _FriendListSection(),
        ],
      ),
    );
  }
}

class _NewFriends extends StatelessWidget {
  const _NewFriends();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RoundIcon(
        icon: Icons.person_add,
        iconColor: Colors.white,
        size: 46,
        padding: 20,
        backgroundColor: Colors.orange,
      ),
      title: Text(
        'New Friends',
        style: context.textTheme.titleMedium,
      ),
      onTap: () {
        Navigator.of(context).push(
          createRoute((context, animation, secondaryAnimation) =>
              const NewFriendsPage()),
        );
      },
    );
  }
}

class _FriendListSection extends ConsumerWidget {
  const _FriendListSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final friends = ref.watch(friendsProvider);
    return ListView.builder(
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
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text('@${friend.nickname}'),
          ),
          onTap: () {
            Navigator.of(context).push(
              createRoute((context, animation, secondaryAnimation) =>
                  FriendDetailPage(friend: friend)),
            );
            ref.read(chatProvider.notifier).viewFriendInfo(friend.id);
          },
        );
      },
    );
  }
}
