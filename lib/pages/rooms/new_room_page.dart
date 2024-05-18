import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/chat_provider.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/pages/rooms/rooms_provider.dart';

class NewRoomPage extends StatelessWidget {
  const NewRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('New room'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: _NewRoomForm(),
      ),
    );
  }
}

class _NewRoomForm extends ConsumerStatefulWidget {
  const _NewRoomForm();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewRoomFormState();
}

class _NewRoomFormState extends ConsumerState<_NewRoomForm> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void createRoom() {
    final membersId = ref.read(membersIdProvider);
    if (nameController.text.isEmpty || membersId.length < 2) {
      return;
    }

    final req = NewRoomRequest(name: nameController.text, membersId: membersId);
    ref.read(webSocketProvider).newRoom(req);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final users = ref.watch(candidatesProvider);
    final numSelected = ref.watch(numMembersProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 6, left: 8),
          child: Text(
            'Name',
            style: context.textTheme.labelLarge,
          ),
        ),
        TextFormField(
          controller: nameController,
          decoration: const InputDecoration(
            hintText: 'Give a room name...',
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 6, left: 8),
          child: Text(
            'Invite Members',
            style: context.textTheme.labelLarge,
          ),
        ),
        Expanded(
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: context.colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: ListView.builder(
              itemCount: users.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(user.avatar),
                    radius: 22,
                  ),
                  title: Text(
                    user.name,
                    style: context.textTheme.titleMedium,
                  ),
                  trailing: Checkbox(
                    value: user.selected,
                    onChanged: (value) {
                      ref.read(candidatesProvider.notifier).onSelect(user.id);
                    },
                  ),
                  onTap: () {
                    ref.read(candidatesProvider.notifier).onSelect(user.id);
                  },
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: FilledButton(
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: createRoom,
              child: numSelected > 0
                  ? Text('Create Room ($numSelected)')
                  : const Text('Create Room')),
        )
      ],
    );
  }
}
