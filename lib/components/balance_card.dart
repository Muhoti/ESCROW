import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String title;
  final String amount;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final bool showVisibilityIcon;
  final VoidCallback? onVisibilityToggle;

  const BalanceCard({
    super.key,
    required this.title,
    required this.amount,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.showVisibilityIcon = true,
    this.onVisibilityToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xFF6EC1FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          if (icon != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: textColor ?? Colors.white),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    color: (textColor ?? Colors.white).withOpacity(0.7),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ] else ...[
            Text(
              title,
              style: TextStyle(
                color: (textColor ?? Colors.white).withOpacity(0.7),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                color: Colors.white,
                child: Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (showVisibilityIcon) ...[
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: onVisibilityToggle,
                  child: Icon(
                    Icons.remove_red_eye,
                    color: textColor ?? Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
