import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/providers/providers.dart';
import 'package:natter/common/theme/theme.dart';
import 'package:natter/common/utils/utils.dart';
import 'package:natter/common/widgets/widgets.dart';

class LogoutCard extends ConsumerWidget {
  const LogoutCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: const Text('Logout'),
        leading: RoundIcon(
          icon: Icons.logout_outlined,
          iconColor: context.colorScheme.error,
          size: 32,
          padding: 12,
          backgroundColor: context.colorScheme.errorContainer,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: context.colorScheme.outline,
          size: 14,
        ),
        onTap: () {
          showConfirm(
            context: context,
            title: 'Exit',
            onConfirm: () async {
              Navigator.pop(context);
              await ref.read(authProvider).logout().catchError((err) {
                showToast(
                  context: context,
                  message: err.toString(),
                  success: false,
                );
              });
            },
          );
        },
      ),
    );
  }
}
