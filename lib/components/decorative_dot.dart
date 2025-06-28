import 'package:flutter/material.dart';

class DecorativeDot extends StatelessWidget {
  final double size;
  final Color? color;

  const DecorativeDot({
    super.key,
    this.size = 20,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color ?? Colors.grey[200],
        shape: BoxShape.circle,
      ),
    );
  }
}
