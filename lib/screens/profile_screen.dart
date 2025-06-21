import 'package:escrow_mobile/screens/business_profile_screen.dart';
import 'package:escrow_mobile/screens/personal_information_screen.dart';
import 'package:escrow_mobile/screens/settings_screen.dart';
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
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          const SizedBox(height: 10),
          const Text('Brian O\'conner',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text('brian.oconner@email.com',
              style: TextStyle(color: Colors.grey[600])),
          const SizedBox(height: 30),
          _buildProfileMenu(
            context: context,
            title: 'Personal Information',
            icon: Icons.person_outline,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalInformationScreen()));
            },
          ),
          _buildProfileMenu(
            context: context,
            title: 'Business Profile',
            icon: Icons.business_center_outlined,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BusinessProfileScreen()));
            },
          ),
          _buildProfileItem('Account & Security'),
          _buildProfileItem('About Us'),
          _buildProfileItem('Contact Us'),
          _buildProfileItem('Log Out'),
          _buildProfileItem('Delete Account'),
          _buildProfileMenu(
            context: context,
            title: 'Settings',
            icon: Icons.settings_outlined,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
          ),
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

  Widget _buildProfileMenu({
    required BuildContext context,
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
