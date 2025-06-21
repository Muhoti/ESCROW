import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DepositScreen extends StatelessWidget {
  const DepositScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text('Deposit Funds',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter Amount',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            TextField(
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                hintText: '0.00',
                hintStyle: TextStyle(color: Color(0xFFB0BEC5)),
                border: InputBorder.none,
                prefixText: 'KSh  ',
                prefixStyle: TextStyle(fontSize: 24, color: Colors.grey),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Mock action
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Proceeding to payment gateway...')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Proceed to Deposit',
                  style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
