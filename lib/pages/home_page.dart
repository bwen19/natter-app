import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/pages/rooms/rooms_page.dart';
import 'package:natter/pages/friends/friends_page.dart';
import 'package:natter/pages/account/account_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final pages = [const RoomsPage(), const FriendsPage(), const AccountPage()];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final totalUnreads = ref.watch(chatProvider.select((v) => v.totalUnreads));
    final numNewFriends =
        ref.watch(chatProvider.select((v) => v.numNewFriends));

    return Scaffold(
      bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() => _currentIndex = index);
          },
          destinations: [
            NavigationDestination(
              label: 'Natter',
              icon: Badge(
                isLabelVisible: totalUnreads > 0,
                label: Text(totalUnreads.toString()),
                child: const Icon(Icons.sms_outlined),
              ),
              selectedIcon: Badge(
                isLabelVisible: totalUnreads > 0,
                label: Text(totalUnreads.toString()),
                child: const Icon(Icons.sms),
              ),
            ),
            NavigationDestination(
              label: 'Contacts',
              icon: Badge(
                isLabelVisible: numNewFriends > 0,
                label: Text(numNewFriends.toString()),
                child: const Icon(Icons.people_outlined),
              ),
              selectedIcon: Badge(
                isLabelVisible: numNewFriends > 0,
                label: Text(numNewFriends.toString()),
                child: const Icon(Icons.people),
              ),
            ),
            const NavigationDestination(
              label: 'Account',
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
            )
          ]),
      body: pages[_currentIndex],
    );
  }
}
