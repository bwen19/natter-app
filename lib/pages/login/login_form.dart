import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/providers/providers.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  bool _passVisibility = true;
  bool _isSubmitting = false;
  final _loginFormKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleVisibility() {
    setState(() => _passVisibility = !_passVisibility);
  }

  String? usernameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must contain at least 6 characters';
    }
    return null;
  }

  void login() async {
    if (_loginFormKey.currentState!.validate()) {
      setState(() => _isSubmitting = true);
      await ref
          .read(authProvider)
          .login(usernameController.text, passwordController.text)
          .then((_) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/',
          (route) => false,
        );
      }).catchError((err) {
        showToast(context: context, message: err.toString(), success: false);
      });
      setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: usernameController,
            validator: usernameValidator,
            decoration: const InputDecoration(
              hintText: "Input your username",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 20.0),
          TextFormField(
            textInputAction: TextInputAction.done,
            controller: passwordController,
            validator: passwordValidator,
            obscureText: _passVisibility,
            decoration: InputDecoration(
              hintText: "Input your password",
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: _passVisibility
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: toggleVisibility,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          FilledButton(
            onPressed: _isSubmitting ? null : login,
            child: _isSubmitting
                ? const SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(),
                  )
                : const Text('Sign in'),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
