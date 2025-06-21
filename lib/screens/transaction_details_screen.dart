import 'package:flutter/material.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text('Transaction Details',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('iPhone 16 Pro max - 16GB, 256GB',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('KSh. 155,000',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            _buildPartyInfo(
                role: 'Seller',
                name: 'John Doe',
                email: 'john.doe@example.com'),
            SizedBox(height: 12),
            _buildPartyInfo(
                role: 'Buyer',
                name: 'Jane Smith',
                email: 'jane.smith@example.com'),
            SizedBox(height: 24),
            Text('Status Timeline',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            _buildStatusStep(
                title: 'Transaction Created',
                date: '25 Aug, 2024',
                isCompleted: true),
            _buildStatusStep(
                title: 'Funds Deposited by Buyer',
                date: '26 Aug, 2024',
                isCompleted: true),
            _buildStatusStep(
                title: 'Seller Confirmed Payment',
                date: '26 Aug, 2024',
                isCompleted: true),
            _buildStatusStep(
                title: 'Item Shipped by Seller',
                date: '27 Aug, 2024',
                isCompleted: false),
            _buildStatusStep(
                title: 'Buyer Confirmed Receipt', isCompleted: false),
            _buildStatusStep(
                title: 'Funds Released to Seller', isCompleted: false),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: Icon(Icons.gavel),
              label: Text('Raise a Dispute'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[50],
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 0,
                  minimumSize: Size(double.infinity, 50)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPartyInfo(
      {required String role, required String name, required String email}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(role, style: TextStyle(color: Colors.grey, fontSize: 14)),
        Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Text(email, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildStatusStep(
      {required String title, String? date, required bool isCompleted}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Icon(
            isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
            color: isCompleted ? Colors.green : Colors.grey[400],
            size: 28,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          isCompleted ? FontWeight.w600 : FontWeight.normal)),
              if (date != null)
                Text(date, style: TextStyle(color: Colors.grey, fontSize: 13)),
            ],
          )
        ],
      ),
    );
  }
}
