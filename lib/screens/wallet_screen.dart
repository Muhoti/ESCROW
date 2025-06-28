import 'package:escrow_mobile/screens/deposit_screen.dart';
import 'package:escrow_mobile/screens/withdrawal_screen.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Wallet',
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            BalanceCard(
              title: 'Available',
              amount: 'KSh. 107,921',
              icon: Icons.account_balance_wallet,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                WalletActionButton(
                  icon: Icons.add_circle_outline,
                  label: 'Deposit',
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DepositScreen()),
                    );
                  },
                ),
                const SizedBox(width: 16),
                WalletActionButton(
                  icon: Icons.remove_circle_outline,
                  label: 'Withdraw',
                  color: Colors.red,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WithdrawalScreen()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            FundsCard(
              title: 'Incoming Funds',
              amount: 'KSh. 43,000',
              icon: Icons.arrow_downward,
              iconColor: Colors.green,
            ),
            const SizedBox(height: 16),
            FundsCard(
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
}
