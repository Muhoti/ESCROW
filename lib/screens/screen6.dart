import 'package:flutter/material.dart';
import './login_page.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  List<String> pin = ['', '', '', ''];
  int pinIndex = 0;

  void _onKeyTap(String value) {
    setState(() {
      if (value == 'Del') {
        if (pinIndex > 0) {
          pinIndex--;
          pin[pinIndex] = '';
        }
      } else if (value == 'Ok') {
        // Handle OK action
      } else if (pinIndex < 4 && RegExp(r'^[0-9]$').hasMatch(value)) {
        pin[pinIndex] = value;
        pinIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create PIN',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Create a 4 - digit PIN to secure your account',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (i) => _pinBox(i)),
                  ),
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
                      onPressed: pin.every((d) => d.isNotEmpty)
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            }
                          : null,
                      child: Text('Create PIN',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            _buildKeypad(),
          ],
        ),
      ),
    );
  }

  Widget _pinBox(int i) {
    return Container(
      width: 50,
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: pinIndex == i ? Colors.blue : Colors.transparent,
          width: 2,
        ),
      ),
      child: Text(
        pin[i],
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildKeypad() {
    final keys = [
      ['1', '2', '3', '-'],
      ['4', '5', '6', '1'],
      ['7', '8', '9', 'Del'],
      [',', '0', '.', 'Ok'],
    ];
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: keys.map((row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: row.map((key) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                child: SizedBox(
                  width: 64,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: key == 'Del' || key == 'Ok'
                          ? Colors.white
                          : Colors.grey[200],
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () => _onKeyTap(key),
                    child: Text(
                      key,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
