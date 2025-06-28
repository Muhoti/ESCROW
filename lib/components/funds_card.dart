import 'package:flutter/material.dart';

class FundsCard extends StatelessWidget {
  final String title;
  final String amount;
  final IconData icon;
  final Color iconColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const FundsCard({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.iconColor,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.blue[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(icon, color: iconColor),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      amount,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.visibility_outlined, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
