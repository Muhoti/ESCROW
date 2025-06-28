import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool centerTitle;
  final Color? backgroundColor;
  final Color? titleColor;
  final double elevation;
  final VoidCallback? onBackPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.centerTitle = true,
    this.backgroundColor,
    this.titleColor,
    this.elevation = 0,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: elevation,
      leading: leading ??
          (onBackPressed != null
              ? IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
                )
              : null),
      title: Text(
        title,
        style: TextStyle(
          color: titleColor ?? Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
