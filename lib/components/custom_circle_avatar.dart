import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double radius;
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;

  const CustomCircleAvatar({
    super.key,
    this.radius = 20,
    this.backgroundColor = Colors.white,
    required this.icon,
    this.iconColor = Colors.green,
    this.iconSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
