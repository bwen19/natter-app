import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/pages/rooms/new_room_page.dart';
import 'package:natter/pages/search/search_page.dart';
import 'package:natter/pages/room/room_page.dart';

class RoomsPage extends StatelessWidget {
  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Natter'),
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
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                createRoute((context, animation, secondaryAnimation) =>
                    const NewRoomPage()),
              );
            },
          ),
        ],
      ),
      body: const _RoomListSection(),
    );
  }
}

class _RoomListSection extends ConsumerWidget {
  const _RoomListSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rooms = ref.watch(roomsProvider);
    return ListView.builder(
      itemCount: rooms.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final room = rooms[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(room.cover),
            radius: 22,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                room.name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                room.sendAt,
                style: TextStyle(
                  fontSize: 13,
                  color: context.colorScheme.outline,
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    room.content,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Badge(
                    isLabelVisible: room.unreads > 0,
                    label: Text(room.unreads.toString()),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.of(context).push(
              createRoute((context, animation, secondaryAnimation) =>
                  RoomPage(roomId: room.id)),
            );
            ref.read(chatProvider.notifier).enterChatRoom(room.id);
          },
        );
      },
    );
  }
}
