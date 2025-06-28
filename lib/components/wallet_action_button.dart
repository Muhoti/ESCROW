import 'package:flutter/material.dart';

class WalletActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap;
  final bool isExpanded;

  const WalletActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    this.onTap,
    this.isExpanded = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );

    if (isExpanded) {
      button = Expanded(child: button);
    }

    return button;
  }
}
