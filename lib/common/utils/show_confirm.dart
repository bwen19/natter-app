import 'package:flutter/material.dart';
import 'package:natter/common/theme/theme.dart';

showConfirm({
  required BuildContext context,
  required String title,
  required void Function()? onConfirm,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            onPressed: onConfirm,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(color: context.colorScheme.error),
            ),
          ),
          FilledButton.tonal(
            onPressed: () => Navigator.pop(context),
            style: FilledButton.styleFrom(
              textStyle: context.textTheme.bodyMedium,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
            child: const Text('Cancel'),
          ),
        ],
      );
    },
  );
}
