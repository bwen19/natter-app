import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  const RoundIcon({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.size,
    required this.padding,
    required this.backgroundColor,
  });

  final IconData icon;
  final Color iconColor;
  final double size;
  final double padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: size - padding,
      ),
    );
  }
}
