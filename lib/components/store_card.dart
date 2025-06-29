import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String leadingImage;
  final String name;
  final String description;
  final String delivery;
  final String address;
  final List<String> iconPaths;
  final VoidCallback? onFollow;

  const StoreCard({
    super.key,
    required this.leadingImage,
    required this.name,
    required this.description,
    required this.delivery,
    required this.address,
    required this.iconPaths,
    this.onFollow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F2F5),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                leadingImage,
                width: 36,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              description,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF8B8B8B),
                              ),
                            ),
                            Text(
                              delivery,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF8B8B8B),
                              ),
                            ),
                            Text(
                              address,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF8B8B8B),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              for (final path in iconPaths)
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Image.asset(
                                    path,
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 12),
                            child: ElevatedButton(
                              onPressed: onFollow,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 0),
                                minimumSize: const Size(0, 32),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Follow',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
