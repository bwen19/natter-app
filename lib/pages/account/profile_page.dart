import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/show_toast.dart';
import 'package:natter/common/widgets/widgets.dart';
import 'package:natter/common/providers/providers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
              Center(
                child: RoundIcon(
                  icon: Icons.account_circle_outlined,
                  iconColor: context.colorScheme.primary,
                  size: 128,
                  padding: 52,
                  backgroundColor: context.colorScheme.primaryContainer,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 56),
                child: Text(
                  'Reset Nickname',
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleLarge,
                ),
              ),
              const _ProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileForm extends ConsumerStatefulWidget {
  const _ProfileForm();

  @override
  ConsumerState<_ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends ConsumerState<_ProfileForm> {
  bool _isSubmitting = false;
  final _profileFormKey = GlobalKey<FormState>();
  final nicknameController = TextEditingController();

  @override
  void dispose() {
    nicknameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authUserProvider)!;
    return Form(
      key: _profileFormKey,
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
                  user.nickname,
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
            controller: nicknameController,
            validator: nicknameValidator,
            decoration: InputDecoration(
              hintText: "Your new name",
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

  String? nicknameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your new nickname';
    }
    return null;
  }

  void updateUser() async {
    if (_profileFormKey.currentState!.validate()) {
      setState(() => _isSubmitting = true);
      await ref
          .read(privateProvider)
          .updateUser(nicknameController.text)
          .then((_) {
        showToast(
          context: context,
          message: 'Successfully updated',
          success: true,
        );
      }).catchError((err) {
        showToast(context: context, message: err.toString(), success: false);
      });
      setState(() => _isSubmitting = false);
    }
  }
}
