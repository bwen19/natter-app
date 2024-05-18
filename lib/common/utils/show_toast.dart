import 'package:flutter/material.dart';
import 'package:natter/common/theme/theme.dart';

showToast({
  required BuildContext context,
  required String message,
  required bool success,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(
        color: success
            ? context.colorScheme.onSecondaryContainer
            : context.colorScheme.onErrorContainer,
      ),
    ),
    duration: const Duration(seconds: 5),
    showCloseIcon: true,
    closeIconColor: context.colorScheme.onErrorContainer,
    width: 300,
    behavior: SnackBarBehavior.floating,
    backgroundColor: success
        ? context.colorScheme.secondaryContainer
        : context.colorScheme.errorContainer,
  ));
}
