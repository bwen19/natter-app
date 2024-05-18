import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/widgets/widgets.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/pages/account/profile_page.dart';
import 'package:natter/pages/account/security_page.dart';
import 'package:natter/pages/account/logout_card.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _UserInfoSection(),
            Text(
              'Settings',
              style: context.textTheme.labelLarge!.copyWith(
                color: context.colorScheme.outline,
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: const Text('Profile'),
                leading: RoundIcon(
                  icon: Icons.account_circle_outlined,
                  iconColor: context.colorScheme.primary,
                  size: 32,
                  padding: 11,
                  backgroundColor: context.colorScheme.primaryContainer,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: context.colorScheme.outline,
                  size: 14,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    createRoute((context, animation, secondaryAnimation) =>
                        const ProfilePage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            const _ChangeAvatarCard(),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: const Text('Security'),
                leading: RoundIcon(
                  icon: Icons.admin_panel_settings_outlined,
                  iconColor: Colors.teal,
                  backgroundColor: Colors.teal.shade100,
                  size: 32,
                  padding: 12,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: context.colorScheme.outline,
                  size: 14,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    createRoute((context, animation, secondaryAnimation) =>
                        const SecurityPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 8),
              child: Text(
                'System',
                style: context.textTheme.labelLarge!.copyWith(
                  color: context.colorScheme.outline,
                ),
              ),
            ),
            const LogoutCard(),
          ],
        ),
      ),
    );
  }
}

class _UserInfoSection extends ConsumerWidget {
  const _UserInfoSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authUserProvider)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 36),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(user.avatar),
            radius: 36,
          ),
          const SizedBox(width: 28),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.nickname,
                style: context.textTheme.titleLarge,
              ),
              Text(
                '@${user.username}',
                style: context.textTheme.bodyLarge!.copyWith(
                  color: context.colorScheme.outline,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _ChangeAvatarCard extends ConsumerWidget {
  const _ChangeAvatarCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: const Text('Avatar'),
        leading: RoundIcon(
          icon: Icons.face,
          iconColor: context.colorScheme.tertiary,
          size: 32,
          padding: 11,
          backgroundColor: context.colorScheme.tertiaryContainer,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: context.colorScheme.outline,
          size: 14,
        ),
        onTap: () async {
          final image = await ImagePicker().pickImage(
            source: ImageSource.gallery,
          );

          if (image != null) {
            ref.read(privateProvider).changeAvatar(image.path).then((_) {
              showToast(
                context: context,
                message: 'Avatar changed successfully',
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
      ),
    );
  }
}
