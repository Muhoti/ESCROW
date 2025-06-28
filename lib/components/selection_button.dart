import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double? borderWidth;
  final bool isExpanded;

  const SelectionButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isPrimary = false,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.borderRadius,
    this.borderWidth,
    this.isExpanded = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = isPrimary
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? Colors.blue,
              padding: padding ?? const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 18,
                color: textColor ?? Colors.white,
                fontWeight: fontWeight,
              ),
            ),
          )
        : OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: padding ?? const EdgeInsets.symmetric(vertical: 18),
              side: BorderSide(
                color: borderColor ?? Colors.blue,
                width: borderWidth ?? 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 18,
                color: textColor ?? Colors.blue,
                fontWeight: fontWeight,
              ),
            ),
          );

    if (isExpanded) {
      button = SizedBox(width: double.infinity, child: button);
    }

    return button;
  }
}
