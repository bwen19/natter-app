import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/providers/chat_provider.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/pages/room/room_provider.dart';
import 'package:natter/pages/room/update_room_page.dart';

class RoomDetailPage extends ConsumerWidget {
  const RoomDetailPage({super.key, required this.roomId, required this.cate});

  final int roomId;
  final RoomCategory cate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(
      chatProvider.select((v) => v.currRoomId),
      (_, int currRoomId) {
        if (currRoomId == 0) {
          showToast(
            context: context,
            message: 'The room has been removed',
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
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Info'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _RoomBaseInfo(roomId: roomId),
              _MembersOperation(roomId: roomId),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Members',
                  style: TextStyle(
                    fontSize: 14,
                    color: context.colorScheme.outline,
                  ),
                ),
              ),
              Expanded(child: _MemberListSection(roomId: roomId)),
              if (cate == RoomCategory.public) _RoomOperation(roomId: roomId),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoomBaseInfo extends ConsumerWidget {
  const _RoomBaseInfo({required this.roomId});

  final int roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final room = ref.watch(roomProvider(roomId));
    final rank = ref.watch(rankProvider(roomId));

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(room.cover),
          radius: 20,
        ),
        title: Text(room.name),
        trailing: rank == MemberRank.owner
            ? Icon(
                Icons.arrow_forward_ios,
                color: context.colorScheme.outline,
                size: 14,
              )
            : null,
        onTap: rank == MemberRank.owner
            ? () {
                Navigator.of(context).push(createRoute(
                    (context, animation, secondaryAnimation) =>
                        UpdateRoomPage(roomId: roomId)));
              }
            : null,
      ),
    );
  }
}

class _MembersOperation extends ConsumerWidget {
  const _MembersOperation({required this.roomId});

  final int roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rank = ref.watch(rankProvider(roomId));
    if (rank != MemberRank.owner) {
      return const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FilledButton.tonal(
            onPressed: () {},
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            ),
            child: const Row(
              children: [
                Icon(Icons.remove, size: 18),
                SizedBox(width: 8),
                Text('Delete Members', style: TextStyle(fontSize: 14))
              ],
            ),
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            ),
            child: const Row(
              children: [
                Icon(Icons.add, size: 18),
                SizedBox(width: 8),
                Text('Add Members', style: TextStyle(fontSize: 14))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MemberListSection extends ConsumerWidget {
  const _MemberListSection({required this.roomId});

  final int roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final members = ref.watch(membersProvider(roomId));

    return GridView.builder(
      shrinkWrap: true,
      itemCount: members.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemBuilder: (context, index) {
        final member = members[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(member.avatar),
              radius: 24,
            ),
            Text(member.name, style: context.textTheme.labelLarge),
          ],
        );
      },
    );
  }
}

class _RoomOperation extends ConsumerWidget {
  const _RoomOperation({required this.roomId});

  final int roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rank = ref.watch(rankProvider(roomId));
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 18,
          child: rank == MemberRank.owner
              ? FilledButton.tonal(
                  onPressed: () {
                    showConfirm(
                      context: context,
                      title: 'Confirm',
                      onConfirm: () {
                        ref.read(webSocketProvider).deleteRoom(roomId);
                      },
                    );
                  },
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text(
                    'Delete Room',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: context.colorScheme.error,
                    ),
                  ),
                )
              : FilledButton.tonal(
                  onPressed: () {
                    showConfirm(
                      context: context,
                      title: 'Confirm',
                      onConfirm: () {
                        ref.read(webSocketProvider).leaveRoom(roomId);
                      },
                    );
                  },
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text(
                    'Leave Room',
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: context.colorScheme.error,
                    ),
                  ),
                ),
        ),
        const Spacer(),
      ],
    );
  }
}
