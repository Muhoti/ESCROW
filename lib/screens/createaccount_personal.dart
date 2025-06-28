import 'package:flutter/material.dart';
import '../components/components.dart';
import 'code.dart';

class CreatePersonalAccount extends StatelessWidget {
  const CreatePersonalAccount({super.key});

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
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left, size: 32),
                      splashRadius: 24,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const HeadingText('Create Account'),
                const SizedBox(height: 12),
                const BodyText(
                  'Please make sure the details you provide is the same as on your National ID in order to verify your identity.',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 24),
                const CustomTextField(labelText: 'First Name'),
                const SizedBox(height: 16),
                const CustomTextField(labelText: 'Second Name'),
                const SizedBox(height: 16),
                const CustomTextField(
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  labelText: 'Phone Number',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                const CustomTextField(labelText: 'Date of Birth'),
                const SizedBox(height: 16),
                const CustomTextField(labelText: 'Gender'),
                const SizedBox(height: 16),
                const CustomTextField(
                  labelText: 'Password',
                  isPassword: true,
                ),
                const SizedBox(height: 32),
                SelectionButton(
                  text: 'sign up',
                  isPrimary: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Code()),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Center(
                  child: LinkText(
                    'Already have an account? Login',
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: CustomText(
                    "By clicking 'Sign up' you agree to TrustHold's\nTerms of Use & Privacy policy",
                    style: AppTextStyles.caption,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
