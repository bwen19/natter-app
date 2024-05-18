import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/models/models.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.isSender,
    required this.isBottom,
    required this.message,
  });

  final bool isSender;
  final bool isBottom;
  final MessageInfo message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (message.divide) _DateDivider(date: message.sendAt),
        isSender
            ? _SenderMessageCard(message: message)
            : _ReceiverMessageCard(message: message),
        if (isBottom) const SizedBox(height: 8),
      ],
    );
  }
}

class _SenderMessageCard extends StatelessWidget {
  const _SenderMessageCard({required this.message});

  final MessageInfo message;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(top: 8, bottom: 4, left: 60, right: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message.name,
                  style: context.textTheme.labelLarge,
                ),
                switch (message.kind) {
                  MessageKind.text => _TextMessageBox(
                      isSender: true,
                      content: message.content,
                    ),
                  MessageKind.image => _ImageMessageBox(
                      fileName: message.content,
                      fileUrl: message.fileUrl,
                    ),
                  MessageKind.file => _FileMesaageBox(
                      fileName: message.content,
                      fileUrl: message.fileUrl,
                    ),
                }
              ],
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(message.avatar),
          ),
        ],
      ),
    );
  }
}

class _ReceiverMessageCard extends StatelessWidget {
  const _ReceiverMessageCard({required this.message});

  final MessageInfo message;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(top: 8, bottom: 4, left: 8, right: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(message.avatar),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.name,
                  style: context.textTheme.labelLarge,
                ),
                switch (message.kind) {
                  MessageKind.text => _TextMessageBox(
                      isSender: false,
                      content: message.content,
                    ),
                  MessageKind.image => _ImageMessageBox(
                      fileName: message.content,
                      fileUrl: message.fileUrl,
                    ),
                  MessageKind.file => _FileMesaageBox(
                      fileName: message.content,
                      fileUrl: message.fileUrl,
                    ),
                }
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TextMessageBox extends StatelessWidget {
  const _TextMessageBox({required this.isSender, required this.content});

  final bool isSender;
  final String content;

  @override
  Widget build(BuildContext context) {
    return isSender
        ? Container(
            decoration: BoxDecoration(
              color: context.colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text(
              content,
              style: context.textTheme.bodyMedium!.copyWith(
                color: context.colorScheme.onTertiaryContainer,
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: context.colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text(
              content,
              style: context.textTheme.bodyMedium!.copyWith(
                color: context.colorScheme.onSecondaryContainer,
              ),
            ),
          );
  }
}

class _ImageMessageBox extends StatelessWidget {
  const _ImageMessageBox({required this.fileUrl, required this.fileName});

  final String fileUrl;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => _ImageHeroPage(
              fileUrl: fileUrl,
              fileName: fileName,
            ),
          ),
        );
      },
      child: Hero(
        tag: 'image',
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 160, maxWidth: 160),
          child: Image(image: CachedNetworkImageProvider(fileUrl)),
        ),
      ),
    );
  }
}

class _ImageHeroPage extends StatelessWidget {
  const _ImageHeroPage({required this.fileUrl, required this.fileName});

  final String fileUrl;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: context.colorScheme.surface,
          alignment: Alignment.center,
          child: Hero(
            tag: 'image',
            child: Image(image: CachedNetworkImageProvider(fileUrl)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          _download().then(
            (msg) => showToast(context: context, message: msg, success: true),
          );
        },
        child: const Icon(Icons.download),
      ),
    );
  }

  Future<String> _download() async {
    try {
      final imageName = path.basename(fileName);
      final response = await http.get(Uri.parse(fileUrl));
      await ImageGallerySaver.saveImage(
        response.bodyBytes,
        name: imageName,
      );
      return 'Saved: $imageName';
    } catch (e) {
      return 'Failed to download.';
    }
  }
}

class _FileMesaageBox extends StatelessWidget {
  const _FileMesaageBox({required this.fileName, required this.fileUrl});

  final String fileName;
  final String fileUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fileName,
            style: const TextStyle(fontSize: 16),
          ),
          const Icon(Icons.download),
        ],
      ),
    );
  }
}

class _DateDivider extends StatelessWidget {
  const _DateDivider({required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 8),
      child: Text(
        fmtDividerDate(date),
        style: context.textTheme.labelMedium!.copyWith(
          color: context.colorScheme.outline,
        ),
      ),
    );
  }
}
