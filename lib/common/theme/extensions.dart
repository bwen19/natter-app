import 'package:flutter/material.dart';
import 'package:natter/common/theme/custom_color.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  CustomColor get customColor => theme.extension<CustomColor>()!;
}
