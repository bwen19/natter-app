import 'package:flutter/material.dart';

class CustomColor extends ThemeExtension<CustomColor> {
  const CustomColor({
    required this.surfaceLowest,
    required this.surfaceLow,
    required this.surfaceContainer,
    required this.surfaceHigh,
    required this.surfaceHighest,
  });

  final Color? surfaceLowest;
  final Color? surfaceLow;
  final Color? surfaceContainer;
  final Color? surfaceHigh;
  final Color? surfaceHighest;

  static const lightModel = CustomColor(
    surfaceLowest: Color(0xffffffff),
    surfaceLow: Color(0xfff7f2fa),
    surfaceContainer: Color(0xfff3edf7),
    surfaceHigh: Color(0xffece6f0),
    surfaceHighest: Color(0xffe6e0e9),
  );
  static const darkModel = CustomColor(
    surfaceLowest: Color(0xff0f0d13),
    surfaceLow: Color(0xff1d1b20),
    surfaceContainer: Color(0xff211f26),
    surfaceHigh: Color(0xff2b2930),
    surfaceHighest: Color(0xff36343b),
  );

  @override
  CustomColor copyWith({
    Color? surfaceLowest,
    Color? surfaceLow,
    Color? surfaceContainer,
    Color? surfaceHigh,
    Color? surfaceHighest,
  }) {
    return CustomColor(
      surfaceLowest: surfaceLowest ?? this.surfaceLowest,
      surfaceLow: surfaceLow ?? this.surfaceLow,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      surfaceHigh: surfaceHigh ?? this.surfaceHigh,
      surfaceHighest: surfaceHighest ?? this.surfaceHighest,
    );
  }

  @override
  CustomColor lerp(CustomColor? other, double t) {
    if (other is! CustomColor) {
      return this;
    }
    return CustomColor(
      surfaceLowest: Color.lerp(surfaceLowest, other.surfaceLowest, t),
      surfaceLow: Color.lerp(surfaceLow, other.surfaceLow, t),
      surfaceContainer: Color.lerp(surfaceContainer, other.surfaceContainer, t),
      surfaceHigh: Color.lerp(surfaceHigh, other.surfaceHigh, t),
      surfaceHighest: Color.lerp(surfaceHighest, other.surfaceHighest, t),
    );
  }
}
