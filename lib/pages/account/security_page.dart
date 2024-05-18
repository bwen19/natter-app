import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/widgets/widgets.dart';
import 'package:natter/common/providers/providers.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Security'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 56),
          child: Column(
            children: [
              Center(
                child: RoundIcon(
                  icon: Icons.admin_panel_settings_outlined,
                  iconColor: Colors.teal,
                  size: 128,
                  padding: 52,
                  backgroundColor: Colors.teal.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 64),
                child: Text(
                  'Reset Password',
                  style: context.textTheme.titleLarge,
                ),
              ),
              const Row(
                children: [
                  Spacer(),
                  Expanded(
                    flex: 18,
                    child: _SecurityForm(),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SecurityForm extends ConsumerStatefulWidget {
  const _SecurityForm();

  @override
  ConsumerState<_SecurityForm> createState() => _SecurityFormState();
}

class _SecurityFormState extends ConsumerState<_SecurityForm> {
  bool _passVisibility = true;
  bool _isSubmitting = false;
  final _securityFormKey = GlobalKey<FormState>();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _securityFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: oldPasswordController,
            validator: oldPasswordValidator,
            obscureText: _passVisibility,
            decoration: InputDecoration(
              hintText: "Old password",
              prefixIcon: Icon(
                Icons.lock,
                color: context.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            textInputAction: TextInputAction.done,
            controller: newPasswordController,
            validator: newPasswordValidator,
            obscureText: _passVisibility,
            decoration: InputDecoration(
              hintText: "New password",
              prefixIcon: Icon(
                Icons.lock,
                color: context.colorScheme.primary,
              ),
              suffixIcon: IconButton(
                icon: _passVisibility
                    ? Icon(
                        Icons.visibility,
                        color: context.colorScheme.primary,
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: context.colorScheme.primary,
                      ),
                onPressed: toggleVisibility,
              ),
            ),
            onTapOutside: (event) =>
                FocusManager.instance.primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 36.0),
          FilledButton(
            onPressed: _isSubmitting ? null : login,
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

  void toggleVisibility() {
    setState(() => _passVisibility = !_passVisibility);
  }

  String? oldPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your new password';
    } else if (value.length < 6) {
      return 'Password must contain at least 6 characters';
    }
    return null;
  }

  String? newPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your new password';
    } else if (value.length < 6) {
      return 'Password must contain at least 6 characters';
    }
    return null;
  }

  void login() async {
    if (_securityFormKey.currentState!.validate()) {
      setState(() => _isSubmitting = true);
      await ref
          .read(privateProvider)
          .changePassword(
            oldPasswordController.text,
            newPasswordController.text,
          )
          .then((_) {
        showToast(
          context: context,
          message: 'Successfully changed password',
          success: true,
        );
      }).catchError((err) {
        showToast(context: context, message: err.toString(), success: false);
      });
      setState(() => _isSubmitting = false);
    }
  }
}
