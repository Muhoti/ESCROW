import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String price;
  final String role;
  final Color roleColor;
  final VoidCallback? onTap;
  final VoidCallback? onDetailsTap;

  const TransactionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.price,
    required this.role,
    required this.roleColor,
    this.onTap,
    this.onDetailsTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFF7FAFC),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: IntrinsicHeight(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: Icon(
                          icon,
                          size: 36,
                          color: const Color(0xFF4A5568),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.5,
                                color: Color(0xFF1A202C),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              price,
                              style: const TextStyle(
                                color: Color(0xFF718096),
                                fontSize: 13.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Icon(
                              Icons.balance,
                              color: const Color(0xFF718096),
                              size: 22,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: onDetailsTap,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2D3748),
                              foregroundColor: Colors.white,
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 0),
                              minimumSize: const Size(0, 32),
                            ),
                            child: const Text(
                              'Details',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Role indicator
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: roleColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
