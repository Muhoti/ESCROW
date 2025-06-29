import 'package:flutter/material.dart';

class CompactButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;

  const CompactButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isPrimary = true,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? (isPrimary ? Colors.blue : Colors.grey[200]),
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 16,
          color: textColor ?? (isPrimary ? Colors.white : Colors.black87),
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
