import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/pages/room/room_page.dart';

class FriendDetailPage extends ConsumerWidget {
  const FriendDetailPage({super.key, required this.friend});

  final FriendInfo friend;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(
      chatProvider.select((v) => v.currFriendId),
      (_, int currFriendId) {
        if (currFriendId == -1) {
          showToast(
            context: context,
            message: 'The friend has been removed',
            success: true,
          );
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
            ref.read(chatProvider.notifier).leaveFriendInfo();
          },
        ),
        title: const Text('Info'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(friend.avatar),
                radius: 64,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              friend.nickname,
              textAlign: TextAlign.center,
              style: context.textTheme.titleLarge,
            ),
            Text(
              '@${friend.username}',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge!.copyWith(
                color: context.colorScheme.outline,
              ),
            ),
            const Expanded(child: SizedBox()),
            FilledButton.tonal(
              onPressed: () {
                showConfirm(
                  context: context,
                  title: 'Confirm',
                  onConfirm: () {
                    ref.read(webSocketProvider).deleteFriend(friend.id);
                  },
                );
              },
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text(
                'Delete User',
                style: context.textTheme.bodyLarge!.copyWith(
                  color: context.colorScheme.error,
                ),
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  createRoute((context, animation, secondaryAnimation) =>
                      RoomPage(roomId: friend.roomId)),
                );
                ref.read(chatProvider.notifier).enterChatRoom(friend.roomId);
              },
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }
}
