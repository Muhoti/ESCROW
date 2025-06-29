import 'package:flutter/material.dart';
import '../components/store_card.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  int selectedTabIndex = 0; // 0 = Individual, 1 = Business

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top grey container with search bar
          Container(
            color: const Color(0xFFD9D9D9),
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 24, left: 0, right: 0, bottom: 12),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Center(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        const Icon(Icons.search, color: Colors.grey, size: 22),
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
              ],
            ),
          ),
          // Lower white container with tabs
          Container(
            color: Colors.white,
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new,
                        size: 22, color: Colors.black),
                    splashRadius: 20,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() => selectedTabIndex = 0),
                          child: _tabItem('Individual', selectedTabIndex == 0),
                        ),
                        const SizedBox(width: 32),
                        GestureDetector(
                          onTap: () => setState(() => selectedTabIndex = 1),
                          child: _tabItem('Business', selectedTabIndex == 1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 48), // To balance the back arrow
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            color: const Color(0xFFE6E6E6),
            margin: const EdgeInsets.only(bottom: 2),
          ),
          // List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              children: selectedTabIndex == 0
                  ? [
                      StoreCard(
                        leadingImage: 'assets/images/icons/phone.png',
                        name: 'Jamo Electronic Shop',
                        description: 'We sell all kinds of Electricals',
                        delivery: 'We deliver country-wide',
                        address:
                            '2nd Flor, shop 205, Majiwa building, Moi Avenue',
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
                        description:
                            'Your one online store for thrifted mtumba',
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
                        description:
                            'We help you get a house in any neighbourhood',
                        delivery: 'We also sell properties -',
                        address:
                            '2nd Flor, shop 205, Majiwa building, Moi Avenue',
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
                    ]
                  : [
                      StoreCard(
                        leadingImage: 'assets/images/icons/bankcards.png',
                        name: 'Business Bankers',
                        description: 'Business banking services',
                        delivery: 'We deliver business solutions',
                        address: '1st Floor, Business Plaza',
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
                        leadingImage: 'assets/images/icons/profile.png',
                        name: 'BizPro Solutions',
                        description: 'Professional business support',
                        delivery: 'Nationwide business support',
                        address: '2nd Floor, Biz Center',
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
      floatingActionButton: Image.asset(
          'assets/images/icons/add.png',
          width: 60,
          height: 60,
        ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _tabItem(String text, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
        if (isSelected)
          Container(
            margin: const EdgeInsets.only(top: 2),
            height: 3,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
      ],
    );
  }
}
