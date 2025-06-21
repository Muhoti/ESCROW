import 'package:flutter/material.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Personal Information'),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildInfoCard(
            title: 'Your Details',
            children: [
              _buildInfoRow(label: 'Name', value: 'Brian O\'conner'),
              _buildInfoRow(label: 'Email', value: 'brian.oconner@example.com'),
              _buildInfoRow(label: 'Phone', value: '+254 712 345 678'),
            ],
          ),
          const SizedBox(height: 20),
          _buildInfoCard(
            title: 'Address',
            children: [
              _buildInfoRow(label: 'Country', value: 'Kenya'),
              _buildInfoRow(label: 'City', value: 'Nairobi'),
              _buildInfoRow(label: 'Street', value: '123 Flutter Lane'),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement edit functionality
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Edit Information'),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(
      {required String title, required List<Widget> children}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 20),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 15)),
          Text(value,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
