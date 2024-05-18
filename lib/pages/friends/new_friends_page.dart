import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/pages/friends/friends_provider.dart';

class NewFriendsPage extends ConsumerWidget {
  const NewFriendsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('New Friends'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Incoming: ',
              style: TextStyle(
                fontSize: 16,
                color: context.colorScheme.outline,
              ),
            ),
            const SizedBox(height: 8),
            const _IncomingFriendsSection(),
            const SizedBox(height: 16),
            Text(
              'Outgoing: ',
              style: TextStyle(
                fontSize: 16,
                color: context.colorScheme.outline,
              ),
            ),
            const SizedBox(height: 8),
            const _OutgoingFriendsSection(),
          ],
        ),
      ),
    );
  }
}

class _IncomingFriendsSection extends ConsumerWidget {
  const _IncomingFriendsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final incomings = ref.watch(incomingFriendsProvider);
    if (incomings.isEmpty) {
      return const Center(child: Text('No new friend requests'));
    }

    return ListView.builder(
      itemCount: incomings.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final friend = incomings[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(friend.avatar),
              radius: 22,
            ),
            title: Text(friend.nickname),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text('@${friend.nickname}'),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: [
              IconButton(
                onPressed: () {
                  ref.read(webSocketProvider).refuseFriend(friend.id);
                },
                icon: Icon(
                  Icons.cancel_outlined,
                  color: context.colorScheme.error,
                ),
              ),
              IconButton.filledTonal(
                onPressed: () {
                  ref.read(webSocketProvider).acceptFriend(friend.id);
                },
                icon: Icon(
                  Icons.check_circle_outline,
                  color: context.colorScheme.primary,
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}

class _OutgoingFriendsSection extends ConsumerWidget {
  const _OutgoingFriendsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outgoings = ref.watch(outgoingFriendsProvider);
    if (outgoings.isEmpty) {
      return const Center(child: Text('No friend requests have been sent out'));
    }

    return ListView.builder(
      itemCount: outgoings.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final friend = outgoings[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(friend.avatar),
              radius: 22,
            ),
            title: Text(friend.nickname),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text('@${friend.nickname}'),
            ),
            trailing: IconButton(
              onPressed: () {
                ref.read(webSocketProvider).refuseFriend(friend.id);
              },
              icon: Icon(
                Icons.cancel_outlined,
                color: context.colorScheme.error,
              ),
            ),
          ),
        );
      },
    );
  }
}
