import 'package:flutter/material.dart';
import './transactions_screen.dart';
import './stores_screen.dart';
import './wallet_screen.dart';
import './profile_screen.dart';
import './notifications_screen.dart';
import './settings_screen.dart';
import './create_transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // We define the screens here to have access to the context for navigation.
    final List<Widget> screens = [
      const HomeScreenBody(),
      const TransactionsScreen(),
      const StoresScreen(),
      const WalletScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
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
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

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
            const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            const SizedBox(width: 10),
            const Text(
              'Hello, Greevyne!',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF6EC1FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const Text('Balance',
                        style: TextStyle(color: Colors.white70, fontSize: 20)),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          color: Colors.white,
                          child: const Text(
                            'KSh. 157,325.67',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.remove_red_eye,
                            color: Colors.white, size: 28),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _actionButton(
                    'Create\nTransaction',
                    true,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CreateTransactionScreen()),
                      );
                    },
                  ),
                  _actionButton('Join\nTransaction', false, () {}),
                  _actionButton('Disputed\nTransactions', false, () {}),
                ],
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('History',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All',
                        style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
              _historyCard(
                leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                    child: const Text('ESC',
                        style: TextStyle(color: Colors.black))),
                title: 'ESC-ESCTR010953122025',
                subtitle: '10 minutes ago',
                amount: 'KSh. 10,400',
                status: 'Active',
                statusColor: Colors.blue,
              ),
              _historyCard(
                leading: const Icon(Icons.upload, size: 32),
                title: 'Withdrawal',
                subtitle: '25/08/2024 08:00AM',
                amount: 'KSh. 27, 002',
              ),
              _historyCard(
                leading: const Icon(Icons.download, size: 32),
                title: 'Deposit',
                subtitle: '02/03/2023 05:30PM',
                amount: 'KSh. 12, 000',
              ),
              _historyCard(
                leading: const Icon(Icons.download, size: 32),
                title: 'Client - Deposit',
                subtitle: '02/03/2023 05:30PM',
                amount: 'KSh. 23, 059',
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _actionButton(String label, bool selected, VoidCallback onPressed) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: selected ? Colors.blue : Colors.grey[200],
            foregroundColor: selected ? Colors.white : Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
          ),
          onPressed: onPressed,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
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
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          leading,
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Text(subtitle,
                    style:
                        const TextStyle(fontSize: 13, color: Colors.black54)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
              if (status != null)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    color: statusColor ?? Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status,
                    style: const TextStyle(
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
