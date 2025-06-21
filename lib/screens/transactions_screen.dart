import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Transactions',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildFilterChips(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                _buildTransactionCard(
                  context: context,
                  icon: Icons.phone_iphone,
                  title: 'iPhone 16 Pro max - 16GB, 256GB',
                  price: 'KSh. 155,000',
                  role: 'Buyer',
                  roleColor: const Color(0xFF007AFF),
                ),
                _buildTransactionCard(
                  context: context,
                  icon: Icons.directions_car,
                  title: 'Slightly used Mercedes Benz C63 AMG',
                  price: 'KSh. 2,210,000',
                  role: 'Seller',
                  roleColor: const Color(0xFFE63946),
                ),
                _buildTransactionCard(
                  context: context,
                  icon: Icons.home_outlined,
                  title: '3 bedroom house sitting on a 50*100',
                  price: 'KSh. 10,000,000',
                  role: 'Buyer',
                  roleColor: const Color(0xFF007AFF),
                ),
                _buildTransactionCard(
                  context: context,
                  icon: Icons.chair_outlined,
                  title: 'Study table with Chair.',
                  price: 'KSh. 34,000',
                  role: 'Seller',
                  roleColor: const Color(0xFFE63946),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFilterChips() {
    final filters = ['Ongoing', 'Completed', 'Cancelled', 'Disputed'];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(filters.length, (index) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedFilter = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: _selectedFilter == index
                        ? Colors.blue
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    filters[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _selectedFilter == index
                          ? Colors.white
                          : Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildTransactionCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String price,
    required String role,
    required Color roleColor,
  }) {
    return Container(
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
                        child: Icon(icon,
                            size: 36, color: const Color(0xFF4A5568))),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.5,
                                  color: Color(0xFF1A202C))),
                          const SizedBox(height: 5),
                          Text(price,
                              style: const TextStyle(
                                  color: Color(0xFF718096), fontSize: 13.5)),
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
                          child: Icon(Icons.balance,
                              color: const Color(0xFF718096), size: 22),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2D3748),
                            foregroundColor: Colors.white,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 0),
                            elevation: 0,
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Details', style: TextStyle(fontSize: 12)),
                              SizedBox(width: 3),
                              Icon(
                                Icons.arrow_forward,
                                size: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 0,
                child: CustomPaint(
                  painter: RoleBannerPainter(color: roleColor),
                  child: Container(
                    width: 130,
                    height: 18,
                    alignment: Alignment.center,
                    child: Text(
                      role,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
