import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/providers/chat_provider.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/pages/friends/friends_provider.dart';

class AddFriendPage extends StatelessWidget {
  const AddFriendPage({super.key});

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
        title: const Text('Add friend'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          children: [
            _SearchUserBar(),
            SizedBox(height: 24),
            _SearchResultSection(),
          ],
        ),
      ),
    );
  }
}

class _SearchUserBar extends ConsumerStatefulWidget {
  const _SearchUserBar();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchUserBarState();
}

class _SearchUserBarState extends ConsumerState<_SearchUserBar> {
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
        hintText: 'Search user...',
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
          ref.read(searchUserProvider.notifier).onSearch(value);
        }
      },
    );
  }
}

class _SearchResultSection extends ConsumerWidget {
  const _SearchResultSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(searchUserProvider);
    final userRelation = ref.watch(searchUserRelationProvider);
    return user == null
        ? Text(
            'Nothing found',
            style: TextStyle(
              fontSize: 16,
              color: context.colorScheme.outline,
            ),
          )
        : Card(
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user.avatar),
                  radius: 22,
                ),
                title: Text(
                  user.nickname,
                  style: context.textTheme.titleMedium,
                ),
                subtitle: Text(
                  '@${user.username}',
                ),
                trailing: switch (userRelation) {
                  UserRelation.stranger => IconButton.filledTonal(
                      icon: const Icon(Icons.person_add_alt),
                      onPressed: () {
                        ref.read(webSocketProvider).addFriend(user.id);
                      },
                    ),
                  UserRelation.incoming => const Icon(
                      Icons.mark_email_unread_outlined,
                      color: Colors.amber,
                    ),
                  UserRelation.outgoing => const Icon(
                      Icons.mark_email_unread_outlined,
                      color: Colors.amber,
                    ),
                  UserRelation.friend => const Icon(
                      Icons.verified_outlined,
                      color: Colors.green,
                    ),
                  UserRelation.userself => const Icon(
                      Icons.person_outline,
                      color: Colors.cyan,
                    ),
                }),
          );
  }
}
