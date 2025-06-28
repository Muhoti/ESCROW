import 'package:flutter/material.dart';
import 'decorative_dot.dart';
import 'custom_circle_avatar.dart';

class HeroBanner extends StatelessWidget {
  final String imagePath;
  final double containerSize;
  final double imageSize;
  final Color borderColor;
  final double borderWidth;
  final Widget? overlayWidget;
  final List<Widget>? decorativeElements;

  const HeroBanner({
    super.key,
    required this.imagePath,
    this.containerSize = 220,
    this.imageSize = 180,
    this.borderColor = Colors.blue,
    this.borderWidth = 2,
    this.overlayWidget,
    this.decorativeElements,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Circular border container
        Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderColor, width: borderWidth),
          ),
        ),
        // Main image
        ClipOval(
          child: Image.asset(
            imagePath,
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
          ),
        ),
        // Overlay widget (e.g., checkmark avatar)
        if (overlayWidget != null) overlayWidget!,
        // Decorative elements (dots)
        if (decorativeElements != null) ...decorativeElements!,
      ],
    );
  }
}
