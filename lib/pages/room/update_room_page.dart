import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/chat_provider.dart';
import 'package:natter/common/providers/private_provider.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/show_toast.dart';
import 'package:natter/pages/room/room_provider.dart';

class UpdateRoomPage extends StatelessWidget {
  const UpdateRoomPage({super.key, required this.roomId});

  final int roomId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 56),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _RoomAvatar(roomId: roomId),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 56),
                child: Text(
                  'Reset Room Name',
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleLarge,
                ),
              ),
              _RoomNameForm(roomId: roomId),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoomAvatar extends ConsumerWidget {
  const _RoomAvatar({required this.roomId});

  final int roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final room = ref.watch(roomProvider(roomId));
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(room.cover),
            radius: 64,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () async {
                final image = await ImagePicker().pickImage(
                  source: ImageSource.gallery,
                );

                if (image != null) {
                  ref
                      .read(privateProvider)
                      .changeCover(roomId, image.path)
                      .then((_) {
                    showToast(
                      context: context,
                      message: 'Cover changed successfully',
                      success: true,
                    );
                  }).catchError((err) {
                    showToast(
                      context: context,
                      message: err.toString(),
                      success: false,
                    );
                  });
                }
              },
              icon: const Icon(
                Icons.photo_camera,
                color: Colors.cyan,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _RoomNameForm extends ConsumerStatefulWidget {
  const _RoomNameForm({required this.roomId});

  final int roomId;

  @override
  ConsumerState<_RoomNameForm> createState() => _RoomNameFormState();
}

class _RoomNameFormState extends ConsumerState<_RoomNameForm> {
  bool _isSubmitting = false;
  final _roomNameFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final room = ref.watch(roomProvider(widget.roomId));
    return Form(
      key: _roomNameFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Current: ',
                  style: TextStyle(
                    fontSize: 16,
                    color: context.colorScheme.outline,
                  ),
                ),
                Text(
                  room.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: context.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
            controller: nameController,
            validator: nameValidator,
            decoration: InputDecoration(
              hintText: "New room name",
              prefixIcon: Icon(
                Icons.person,
                color: context.colorScheme.primary,
              ),
            ),
            onTapOutside: (event) =>
                FocusManager.instance.primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 36.0),
          FilledButton(
            onPressed: _isSubmitting ? null : updateUser,
            child: _isSubmitting
                ? const SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(),
                  )
                : const Text('Submit'),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your new nickname';
    }
    return null;
  }

  void updateUser() async {
    if (_roomNameFormKey.currentState!.validate()) {
      setState(() => _isSubmitting = true);
      await ref.read(webSocketProvider).updateRoom(
            UpdateRoomRequest(roomId: widget.roomId, name: nameController.text),
          );
      setState(() => _isSubmitting = false);
    }
  }
}
