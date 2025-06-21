import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            SizedBox(width: 10),
            Text(
              'Greevyne',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildProfileItem('Personal Information'),
          _buildProfileItem('Business profile'),
          _buildProfileItem('Account & Security'),
          _buildProfileItem('About Us'),
          _buildProfileItem('Contact Us'),
          _buildProfileItem('Log Out'),
          _buildProfileItem('Delete Account'),
          _buildProfileItem('Account & Security'),
        ],
      ),
    );
  }

  Widget _buildProfileItem(String title) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
