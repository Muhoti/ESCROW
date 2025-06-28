import 'package:flutter/material.dart';
import '../components/components.dart';
import './home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left, size: 32),
                  splashRadius: 24,
                  onPressed: () => Navigator.pop(context),
                ),
                const SizedBox(height: 8),
                Center(
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage:
                        const AssetImage('assets/images/avatar.png'),
                  ),
                ),
                const SizedBox(height: 24),
                const HeadingText('Hello, Greevyne!'),
                const SizedBox(height: 8),
                const BodyText('Securely login to your account to continue'),
                const SizedBox(height: 32),
                const CustomTextField(
                  labelText: 'Password',
                  isPassword: true,
                ),
                const SizedBox(height: 32),
                CustomElevatedButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Center(
                  child: LinkText(
                    'Forgot password?',
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 32),
                CustomOutlinedButton(
                  text: 'Biometric Login',
                  onPressed: () {},
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
