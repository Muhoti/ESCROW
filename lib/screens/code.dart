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
                icon: Icon(Icons.chevron_left, size: 32),
                splashRadius: 24,
                onPressed: () => Navigator.pop(context),
              ),
              SizedBox(height: 8),
              Text(
                'Enter Code',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                "We've sent a code to your email, please enter the code in the field below to activate  your account",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen6()),
                      );
                    },
                    child: Text('Activate',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Resend',
                        style: TextStyle(fontSize: 16, color: Colors.black87)),
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
