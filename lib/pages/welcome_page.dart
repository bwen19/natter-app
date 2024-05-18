import 'package:flutter/material.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/pages/login/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
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
            child: Column(
              children: <Widget>[
                const SizedBox(height: 120),
                const _TopImageSection(),
                const SizedBox(height: 48),
                Text(
                  'Welcome',
                  style: context.textTheme.displaySmall,
                ),
                const SizedBox(height: 6),
                Text(
                  'Let us have a natter',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: context.colorScheme.secondary,
                  ),
                ),
                const SizedBox(height: 48),
                const _ContinueButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TopImageSection extends StatelessWidget {
  const _TopImageSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 12,
          child: Theme.of(context).brightness == Brightness.light
              ? Image.asset('assets/images/welcome-light.png')
              : Image.asset('assets/images/welcome-dark.png'),
        ),
        const Spacer(),
      ],
    );
  }
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 10,
          child: FilledButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                createRoute((context, animation, secondaryAnimation) =>
                    const LoginPage()),
                (route) => false,
              );
            },
            child: const Text('Get started'),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
