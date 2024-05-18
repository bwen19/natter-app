import 'package:flutter/material.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/pages/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/top-corner.png', width: 120),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/bottom-corner.png', width: 120),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _TopImage(),
                  Row(
                    children: [
                      Spacer(),
                      Expanded(flex: 10, child: LoginForm()),
                      Spacer(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TopImage extends StatelessWidget {
  const _TopImage();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Login', style: context.textTheme.headlineSmall),
        const SizedBox(height: 20),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Theme.of(context).brightness == Brightness.light
                  ? Image.asset('assets/images/login-light.png')
                  : Image.asset('assets/images/login-dark.png'),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 36),
      ],
    );
  }
}
