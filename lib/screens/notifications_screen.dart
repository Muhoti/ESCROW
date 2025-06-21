import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text('Notifications', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildNotificationItem(
            icon: Icons.arrow_downward,
            iconColor: Colors.blue,
            title: 'Money Received',
            subtitle: 'Joy joined the transaction, please make ...',
            time: '10 minutes ago',
          ),
          _buildNotificationItem(
            icon: Icons.arrow_upward,
            iconColor: Colors.blue,
            title: 'Money Sent',
            subtitle: 'KSh. 155,000 deposited into your acco...',
            time: '1 hour ago',
          ),
          _buildNotificationItem(
            icon: Icons.arrow_upward,
            iconColor: Colors.blue,
            title: 'Money Sent',
            subtitle: 'Stacy has dispatched the goods................',
            time: '23/02/2025 10:07AM',
          ),
          _buildNotificationItem(
            icon: Icons.arrow_downward,
            iconColor: Colors.blue,
            title: 'Money Received',
            subtitle: 'Joseph joined the transaction, make .........',
            time: '10 minutes ago',
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String time,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconColor.withOpacity(0.2),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Text(time, style: TextStyle(color: Colors.grey, fontSize: 12)),
      onTap: () {},
    );
  }
}
