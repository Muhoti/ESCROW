import 'package:flutter/material.dart';
import '../components/components.dart';
import './screen2.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              HeroBanner(
                imagePath: 'assets/images/escrow_image.png',
                overlayWidget: Positioned(
                  left: 20,
                  bottom: 20,
                  child: CustomCircleAvatar(
                    icon: Icons.check_circle,
                    iconColor: Colors.green,
                  ),
                ),
                decorativeElements: [
                  const Positioned(top: 10, left: 10, child: DecorativeDot()),
                  const Positioned(top: 10, right: 10, child: DecorativeDot()),
                  const Positioned(
                      bottom: 10, left: 10, child: DecorativeDot()),
                  const Positioned(
                      bottom: 10, right: 10, child: DecorativeDot()),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Buy anything safely\nanytime, anywhere',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Buy anything safely online with confidence, protect yourself from fraud',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 48),
              CustomElevatedButton(
                text: 'Get Started',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              CustomOutlinedButton(
                text: 'Log in to your account',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screen2()),
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
