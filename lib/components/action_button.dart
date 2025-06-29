import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isSelected;
  final bool isExpanded;
  final EdgeInsetsGeometry? margin;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final int? flex;

  const ActionButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.isSelected = false,
    this.isExpanded = true,
    this.margin,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.flex,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? (isSelected ? Colors.blue : Colors.grey[200]),
        foregroundColor:
            textColor ?? (isSelected ? Colors.white : Colors.black),
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 12,
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon,
                    color: textColor ??
                        (isSelected ? Colors.white : Colors.black)),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize ?? 18,
                      fontWeight: fontWeight ?? FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          : Flexible(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize ?? 15,
                  fontWeight: fontWeight ?? FontWeight.w600,
                ),
              ),
            ),
    );

    if (isExpanded) {
      button = Flexible(
        flex: flex ?? 1,
        child: button,
      );
    }

    if (margin != null) {
      button = Container(margin: margin, child: button);
    }

    return button;
  }
}
