import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/providers/chat_provider.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/pages/room/room_page.dart';
import 'package:natter/pages/search/search_provider.dart';

class SearchRooms extends ConsumerWidget {
  const SearchRooms({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rooms = ref.watch(searchRoomsProvider);
    if (rooms.isEmpty) {
      return const SizedBox();
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Chat rooms',
            style: TextStyle(
              fontSize: 16,
              color: context.colorScheme.outline,
            ),
          ),
        ),
        Card(
          child: ListView.builder(
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
                      style: context.textTheme.titleMedium,
                    ),
                    Text(
                      room.sendAt,
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 3),
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
          ),
        ),
      ],
    );
  }
}
