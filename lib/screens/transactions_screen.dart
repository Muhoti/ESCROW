import 'package:flutter/material.dart';
import '../components/components.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  int _selectedFilter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Transactions',
        onBackPressed: () => Navigator.of(context).pop(),
      ),
      body: Column(
        children: [
          FilterChips(
            filters: ['Ongoing', 'Completed', 'Cancelled', 'Disputed'],
            initialSelectedIndex: _selectedFilter,
            onFilterChanged: (index) {
              setState(() {
                _selectedFilter = index;
              });
            },
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                TransactionCard(
                  icon: Icons.phone_iphone,
                  title: 'iPhone 16 Pro max - 16GB, 256GB',
                  price: 'KSh. 155,000',
                  role: 'Buyer',
                  roleColor: const Color(0xFF007AFF),
                  onDetailsTap: () {
                    // Navigate to transaction details
                  },
                ),
                TransactionCard(
                  icon: Icons.directions_car,
                  title: 'Slightly used Mercedes Benz C63 AMG',
                  price: 'KSh. 2,210,000',
                  role: 'Seller',
                  roleColor: const Color(0xFFE63946),
                  onDetailsTap: () {
                    // Navigate to transaction details
                  },
                ),
                TransactionCard(
                  icon: Icons.home_outlined,
                  title: '3 bedroom house sitting on a 50*100',
                  price: 'KSh. 10,000,000',
                  role: 'Buyer',
                  roleColor: const Color(0xFF007AFF),
                  onDetailsTap: () {
                    // Navigate to transaction details
                  },
                ),
                TransactionCard(
                  icon: Icons.chair_outlined,
                  title: 'Study table with Chair.',
                  price: 'KSh. 34,000',
                  role: 'Seller',
                  roleColor: const Color(0xFFE63946),
                  onDetailsTap: () {
                    // Navigate to transaction details
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoleBannerPainter extends CustomPainter {
  final Color color;
  RoleBannerPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width / 2, size.height * 2.2, size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant RoleBannerPainter oldDelegate) =>
      color != oldDelegate.color;
}
