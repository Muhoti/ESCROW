import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text('Wallet', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            _buildBalanceCard(
              title: 'Available',
              amount: 'KSh. 107,921',
              icon: Icons.account_balance_wallet,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                _actionButton(icon: Icons.add, label: 'Deposit'),
                SizedBox(width: 16),
                _actionButton(icon: Icons.arrow_forward, label: 'Withdraw'),
              ],
            ),
            SizedBox(height: 20),
            _buildFundsCard(
              title: 'Incoming Funds',
              amount: 'KSh. 43,000',
              icon: Icons.arrow_downward,
              iconColor: Colors.green,
            ),
            SizedBox(height: 16),
            _buildFundsCard(
              title: 'Outgoing Funds',
              amount: 'KSh. 11,590',
              icon: Icons.arrow_upward,
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceCard(
      {required String title, required String amount, required IconData icon}) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(width: 8),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.white,
                child: Text(
                  amount,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.visibility_outlined, color: Colors.white),
            ],
          )
        ],
      ),
    );
  }

  Widget _actionButton({required IconData icon, required String label}) {
    return Expanded(
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(label),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
      ),
    );
  }

  Widget _buildFundsCard(
      {required String title,
      required String amount,
      required IconData icon,
      required Color iconColor}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(icon, color: iconColor),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text(amount,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          Icon(Icons.visibility_outlined, color: Colors.white),
        ],
      ),
    );
  }
}
