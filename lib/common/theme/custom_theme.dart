import 'package:flutter/material.dart';
import 'package:natter/common/theme/custom_color.dart';

class CustomTheme {
  static ThemeData light() => theme(ThemeData.light(), CustomColor.lightModel);

  static ThemeData dark() => theme(ThemeData.dark(), CustomColor.darkModel);

  static ThemeData theme(ThemeData base, CustomColor customColor) {
    return base.copyWith(
      extensions: [customColor],
      appBarTheme: AppBarTheme(
        backgroundColor: customColor.surfaceLow,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: base.colorScheme.onSurfaceVariant,
        ),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: customColor.surfaceContainer,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: customColor.surfaceLow,
        modalBackgroundColor: customColor.surfaceLow,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: customColor.surfaceLow,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1.1,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        filled: true,
        hintStyle: TextStyle(color: base.colorScheme.outlineVariant),
        prefixIconColor: base.colorScheme.primary,
        suffixIconColor: base.colorScheme.primary,
        fillColor: customColor.surfaceHigh,
        border: OutlineInputBorder(
          borderSide: const BorderSide(style: BorderStyle.none, width: 0),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      listTileTheme: ListTileThemeData(
          titleTextStyle: TextStyle(
            fontSize: 16,
            color: base.colorScheme.onSurface,
          ),
          subtitleTextStyle: TextStyle(
            color: base.colorScheme.outline,
          )),
    );
  }
}
