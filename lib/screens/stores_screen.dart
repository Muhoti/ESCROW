import 'package:flutter/material.dart';
import '../components/store_card.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for a store',
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          _buildTabs(context),
          Container(
            height: 1,
            color: const Color(0xFFE6E6E6),
            margin: const EdgeInsets.only(bottom: 2),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              children: [
                StoreCard(
                  leadingImage: 'assets/images/icons/phone.png',
                  name: 'Jamo Electronic Shop',
                  description: 'We sell all kinds of Electricals',
                  delivery: 'We deliver country-wide',
                  address: '2nd Flor, shop 205, Majiwa building, Moi Avenue',
                  iconPaths: [
                    'assets/images/icons/tiktok.png',
                    'assets/images/icons/whatsapp_business.png',
                    'assets/images/icons/grid.png',
                    'assets/images/icons/call.png',
                    'assets/images/icons/location.png',
                  ],
                  onFollow: () {},
                ),
                StoreCard(
                  leadingImage: 'assets/images/icons/dress.png',
                  name: 'Eliza Closet',
                  description: 'Your one online store for thrifted mtumba',
                  delivery: 'We deliver country-wide',
                  address: 'We operate online, no physical shop',
                  iconPaths: [
                    'assets/images/icons/tiktok.png',
                    'assets/images/icons/whatsapp_business.png',
                    'assets/images/icons/grid.png',
                    'assets/images/icons/call.png',
                    'assets/images/icons/location.png',
                  ],
                  onFollow: () {},
                ),
                StoreCard(
                  leadingImage: 'assets/images/icons/car.png',
                  name: 'Elphas Auto Garage',
                  description: 'We sell all kinds of Electricals',
                  delivery: 'We deliver country-wide',
                  address: 'Kiambu Road, next to Thindigua Ridges',
                  iconPaths: [
                    'assets/images/icons/tiktok.png',
                    'assets/images/icons/whatsapp_business.png',
                    'assets/images/icons/grid.png',
                    'assets/images/icons/call.png',
                    'assets/images/icons/location.png',
                  ],
                  onFollow: () {},
                ),
                StoreCard(
                  leadingImage: 'assets/images/icons/house.png',
                  name: 'Muga Estate Agents',
                  description: 'We help you get a house in any neighbourhood',
                  delivery: 'We also sell properties -',
                  address: '2nd Flor, shop 205, Majiwa building, Moi Avenue',
                  iconPaths: [
                    'assets/images/icons/tiktok.png',
                    'assets/images/icons/whatsapp_business.png',
                    'assets/images/icons/grid.png',
                    'assets/images/icons/call.png',
                    'assets/images/icons/location.png',
                  ],
                  onFollow: () {},
                ),
                StoreCard(
                  leadingImage: 'assets/images/icons/shoppingcart.png',
                  name: 'Maduri General supplies',
                  description: 'We sell all kind of household items',
                  delivery: 'We deliver country-wide',
                  address: 'Kamukunji, Business Centre, Kamukunji',
                  iconPaths: [
                    'assets/images/icons/tiktok.png',
                    'assets/images/icons/whatsapp_business.png',
                    'assets/images/icons/grid.png',
                    'assets/images/icons/call.png',
                    'assets/images/icons/location.png',
                  ],
                  onFollow: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 24),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          elevation: 0,
          child: Image.asset('assets/images/icons/add.png',
              width: 28, height: 28, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildTabs(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8, bottom: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new,
                size: 22, color: Colors.black),
            splashRadius: 20,
            onPressed: () => Navigator.of(context).pop(),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _tabItem('Individual', true),
                const SizedBox(width: 32),
                _tabItem('Business', false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabItem(String text, bool isSelected) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    );
  }
}
