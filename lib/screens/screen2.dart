import 'package:escrow_mobile/components/selection_button.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';
import 'createaccount_personal.dart';
import 'createaccount_business.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'TRUST HOLD',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A2342),
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      'ESCROW SOLUTIONS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF0A2342),
                        letterSpacing: 1.1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              const HeadingText(
                'CREATE ACCOUNT',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              SelectionButton(
                text: 'Individual',
                isPrimary: false,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreatePersonalAccount()),
                  );
                },
              ),
              const SizedBox(height: 24),
              const Text('or',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              SelectionButton(
                text: 'Business',
                isPrimary: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateBusinessAccount()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
