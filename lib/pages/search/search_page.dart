import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/pages/search/search_friends.dart';
import 'package:natter/pages/search/search_provider.dart';
import 'package:natter/pages/search/search_rooms.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
        title: const Text('Search'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Column(
            children: [
              _SearchBar(),
              SearchFriends(),
              SearchRooms(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends ConsumerStatefulWidget {
  const _SearchBar();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<_SearchBar> {
  final searchController = TextEditingController();
  bool _hasValue = false;

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      controller: searchController,
      style: context.textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: _hasValue
            ? IconButton(
                onPressed: () {
                  searchController.clear();
                  setState(() => _hasValue = false);
                },
                icon: const Icon(Icons.close),
              )
            : null,
      ),
      autofocus: true,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      onChanged: (value) {
        setState(() => _hasValue = value.isNotEmpty);
      },
      onSubmitted: (value) {
        if (value.isNotEmpty) {
          ref.read(searchRoomsProvider.notifier).onSearch(value);
          ref.read(searchFriendsProvider.notifier).onSearch(value);
        }
      },
    );
  }
}
