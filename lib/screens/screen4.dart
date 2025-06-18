import 'package:flutter/material.dart';
import './screen5.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

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
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                SizedBox(height: 8),
                Text(
                  'Create Account',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'Please make sure the details you provide is the same as on your National ID in order to verify your identity.',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 24),
                _buildTextField('Company Name'),
                SizedBox(height: 16),
                _buildTextField('Company Email'),
                SizedBox(height: 16),
                _buildTextField('Company Location'),
                SizedBox(height: 16),
                _buildTextField('Type of Services'),
                SizedBox(height: 16),
                _buildTextField('Password', isPassword: true),
                SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen5()),
                      );
                    },
                    child: Text('Sign up',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Already have an account? Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "By clicking 'Sign up' you agree to TrustHold's\nTerms of Use & Privacy policy",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: isPassword ? Icon(Icons.visibility_off) : null,
      ),
    );
  }
}
