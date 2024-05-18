import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/pages/room/room_provider.dart';
import 'package:natter/pages/room/send_section.dart';
import 'package:natter/pages/room/message_card.dart';
import 'package:natter/pages/room/room_detail_page.dart';

class RoomPage extends ConsumerWidget {
  RoomPage({super.key, required this.roomId});

  final int roomId;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(
      chatProvider.select((v) => v.currRoomId),
      (_, int currRoomId) {
        if (currRoomId == -1) {
          showToast(
            context: context,
            message: 'The room has been removed',
            success: true,
          );
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        }
      },
    );

    final room = ref.watch(roomProvider(roomId));

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            ref.read(chatProvider.notifier).leaveChatRoom();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(room.name),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.of(context).push(
                createRoute((context, animation, secondaryAnimation) =>
                    RoomDetailPage(roomId: room.id, cate: room.category)),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Align(
                alignment: Alignment.topCenter,
                child: _MessageListSection(
                  roomId: roomId,
                  scrollController: scrollController,
                ),
              ),
            ),
          ),
          BottomAppBar(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: SendSection(
              roomId: roomId,
              scrollController: scrollController,
            ),
          )
        ],
      ),
    );
  }
}

class _MessageListSection extends ConsumerWidget {
  const _MessageListSection({
    required this.roomId,
    required this.scrollController,
  });

  final int roomId;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(messagesProvider(roomId));
    final userId = ref.watch(authUserProvider)?.id ?? 0;
    return ListView.builder(
      reverse: true,
      shrinkWrap: true,
      controller: scrollController,
      itemCount: messages.length,
      itemBuilder: (_, index) {
        final message = messages[index];
        return MessageCard(
          isSender: userId == message.senderId,
          isBottom: index == 0,
          message: message,
        );
      },
    );
  }
}
