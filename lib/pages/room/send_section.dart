import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';

class SendSection extends ConsumerStatefulWidget {
  const SendSection({
    super.key,
    required this.roomId,
    required this.scrollController,
  });

  final int roomId;
  final ScrollController scrollController;

  @override
  ConsumerState<SendSection> createState() => _SendSectionState();
}

class _SendSectionState extends ConsumerState<SendSection> {
  final messageController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            final image = await ImagePicker().pickImage(
              source: ImageSource.gallery,
            );
            if (image != null) {
              ref
                  .read(privateProvider)
                  .sendFile(widget.roomId, image.path)
                  .catchError((err) {
                showToast(
                  context: context,
                  message: err.toString(),
                  success: false,
                );
              });
            }
          },
          icon: const Icon(Icons.add_circle_outline),
        ),
        Expanded(
          flex: 10,
          child: TextFormField(
            controller: messageController,
            minLines: 1,
            maxLines: 3,
            decoration: InputDecoration(
              fillColor: context.colorScheme.surface,
              hintText: 'Type a message...',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        IconButton.filled(
          onPressed: sendMessage,
          icon: const Icon(Icons.send_outlined),
        ),
      ],
    );
  }

  void sendMessage() async {
    final message = messageController.text;
    if (message.isNotEmpty) {
      final req = NewMessageRequest(
        roomId: widget.roomId,
        content: messageController.text,
        fileUrl: '',
        kind: MessageKind.text,
      );
      await ref.read(webSocketProvider).sendMessage(req);
      messageController.clear();

      widget.scrollController.animateTo(
        widget.scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }
}
