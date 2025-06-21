import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text('Security Settings', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSettingsItem(
              title: 'Biometric authentication',
              subtitle: 'Verify your fingerprint to complete login',
            ),
            SizedBox(height: 16),
            _buildSettingsItem(
              title: 'Two-Factor Autjentication',
              subtitle: 'Verify 2-FA security question to complete login',
            ),
            SizedBox(height: 16),
            _buildSettingsItem(
              title: 'KYC Form',
              subtitle: 'Update your KYC Form here',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem({required String title, required String subtitle}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.grey[200],
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(subtitle,
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
