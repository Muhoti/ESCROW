import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            SizedBox(width: 10),
            Text(
              'Hello, Greevyne!',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Color(0xFF6EC1FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text('Balance',
                        style: TextStyle(color: Colors.white70, fontSize: 20)),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          color: Colors.white,
                          child: Text(
                            'KSh. 157,325.67',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.remove_red_eye,
                            color: Colors.white, size: 28),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _actionButton('Create\nTransaction', true),
                  _actionButton('Join\nTransaction', false),
                  _actionButton('Disputed\nTransactions', false),
                ],
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('History',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  TextButton(
                    onPressed: () {},
                    child:
                        Text('See All', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
              _historyCard(
                leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                    child: Text('ESC', style: TextStyle(color: Colors.black))),
                title: 'ESC-ESCTR010953122025',
                subtitle: '10 minutes ago',
                amount: 'KSh. 10,400',
                status: 'Active',
                statusColor: Colors.blue,
              ),
              _historyCard(
                leading: Icon(Icons.upload, size: 32),
                title: 'Withdrawal',
                subtitle: '25/08/2024 08:00AM',
                amount: 'KSh. 27, 002',
              ),
              _historyCard(
                leading: Icon(Icons.download, size: 32),
                title: 'Deposit',
                subtitle: '02/03/2023 05:30PM',
                amount: 'KSh. 12, 000',
              ),
              _historyCard(
                leading: Icon(Icons.download, size: 32),
                title: 'Client - Deposit',
                subtitle: '02/03/2023 05:30PM',
                amount: 'KSh. 23, 059',
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _actionButton(String label, bool selected) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: selected ? Colors.blue : Colors.grey[200],
            foregroundColor: selected ? Colors.white : Colors.black,
            padding: EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
          ),
          onPressed: () {},
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _historyCard(
      {required Widget leading,
      required String title,
      required String subtitle,
      required String amount,
      String? status,
      Color? statusColor}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          leading,
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 2),
                Text(subtitle,
                    style: TextStyle(fontSize: 13, color: Colors.black54)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
              if (status != null)
                Container(
                  margin: EdgeInsets.only(top: 4),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    color: statusColor ?? Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
