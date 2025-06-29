import 'package:escrow_mobile/components/components.dart';
import 'package:flutter/material.dart';
import './screen6.dart';

class Code extends StatelessWidget {
  const Code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              const Text(
                'Enter Code',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                "We've sent a code to your email, please enter the code in the field below to activate your account",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 32),
              const CustomTextField(labelText: 'Enter Code'),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CompactButton(
                    text: 'Activate',
                    isPrimary: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen6()),
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  CompactButton(
                    text: 'Resend',
                    isPrimary: false,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
