import 'package:flutter/material.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for a store',
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          _buildTabs(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildStoreCard(
                  icon: Icons.phone_iphone,
                  name: 'Jamo Electronic Shop',
                  category: 'We sell all kinds of Electricals',
                  delivery: 'We deliver country-wide',
                  address: '2nd Flor, shop 205, Majiwa building, Moi Avenue',
                ),
                _buildStoreCard(
                  icon: Icons.shopping_bag_outlined,
                  name: 'Eliza Closet',
                  category: 'Your one online store for thrifted mtumba',
                  delivery: 'We deliver country-wide',
                  address: 'We operate online, no physical shop',
                ),
                _buildStoreCard(
                  icon: Icons.directions_car_filled,
                  name: 'Elphas Auto Garage',
                  category: 'We sell all kinds of Electricals',
                  delivery: 'We deliver country-wide',
                  address: 'Kiambu road, next to Thindigua Ridges',
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          BackButton(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _tabItem('Individual', true),
                SizedBox(width: 20),
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
        decoration: isSelected ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }

  Widget _buildStoreCard({
    required IconData icon,
    required String name,
    required String category,
    required String delivery,
    required String address,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon, size: 40, color: Colors.blue[800]),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(category,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 13)),
                      Text(delivery,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 13)),
                      Text(address,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 13)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.music_note, color: Colors.black),
                    SizedBox(width: 8),
                    Icon(Icons.chat, color: Colors.green),
                    SizedBox(width: 8),
                    Icon(Icons.language, color: Colors.blue),
                    SizedBox(width: 8),
                    Icon(Icons.phone, color: Colors.black),
                    SizedBox(width: 8),
                    Icon(Icons.location_on, color: Colors.red),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Follow'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
