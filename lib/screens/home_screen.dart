import 'package:flutter/material.dart';
import '../components/components.dart';
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
              BalanceCard(
                title: 'Balance',
                amount: 'KSh. 157,325.67',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    label: 'Create\nTransaction',
                    isSelected: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CreateTransactionScreen()),
                      );
                    },
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                  ActionButton(
                    label: 'Join\nTransaction',
                    isSelected: false,
                    onPressed: () {},
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                  ActionButton(
                    label: 'Disputed\nTransactions',
                    isSelected: false,
                    onPressed: () {},
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HeadingText('History', textAlign: TextAlign.left),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All',
                        style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
              HistoryCard(
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
              HistoryCard(
                leading: Image.asset('assets/images/icons/withdraw.png',
                    width: 32, height: 32),
                title: 'Withdrawal',
                subtitle: '25/08/2024 08:00AM',
                amount: 'KSh. 27, 002',
              ),
              HistoryCard(
                leading: Image.asset('assets/images/icons/deposit.png',
                    width: 32, height: 32),
                title: 'Deposit',
                subtitle: '02/03/2023 05:30PM',
                amount: 'KSh. 12, 000',
              ),
              HistoryCard(
                leading: Image.asset('assets/images/icons/deposit.png',
                    width: 32, height: 32),
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
}
