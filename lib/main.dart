import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/repos/repos.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/pages/home_page.dart';
import 'package:natter/pages/welcome_page.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: const NatterApp(),
    ),
  );
}

class NatterApp extends ConsumerWidget {
  const NatterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Natter',
      theme: CustomTheme.light(),
      darkTheme: CustomTheme.dark(),
      home: ref.watch(authStateProvider).when(
            data: (isLoggedIn) {
              FlutterNativeSplash.remove();
              return isLoggedIn ? const HomePage() : const WelcomePage();
            },
            loading: () => const SizedBox(),
            error: (error, trace) => const Scaffold(
              body: Center(child: Text('Oops, something unexpected happened')),
            ),
          ),
    );
  }
}
