import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? borderColor;
  final Color? textColor;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double? borderWidth;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.borderColor,
    this.textColor,
    this.fontSize,
    this.padding,
    this.borderRadius,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
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
          ),
        ),
      ),
    );
  }
}
