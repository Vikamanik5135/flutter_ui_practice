import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My E-Wallet', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: Colors.white, 
        foregroundColor: Colors.black, 
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, size: 20),
        actions: const [Icon(Icons.search), SizedBox(width: 16)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 180,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  colors: [Color(0xFF1C1C1E), Color(0xFF3A3A3C)],
                  begin: Alignment.topLeft, end: Alignment.bottomRight,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Andrew Ainsley', style: TextStyle(color: Colors.white70, fontSize: 14)),
                      Text('VISA', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  Spacer(),
                  Text('Your balance', style: TextStyle(color: Colors.white54, fontSize: 12)),
                  SizedBox(height: 4),
                  Text('\$9.379', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Positioned(
              right: 12, bottom: 12,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_upward, size: 16),
                label: const Text('Top Up'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 24),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
            Text('Transaction History', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('See All', style: TextStyle(color: Colors.blue)),
          ]),
          const SizedBox(height: 12),
          for (final row in const [
            ['Lowson Chair', '\$120'],
            ['Top Up Wallet', '\$400'],
            ['Parabolic Reflector', '\$70'],
            ['Mini Wooden Table', '\$165'],
            ['Top Up Wallet', '\$400'],
          ])
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: Icon(Icons.shopping_bag_outlined, color: Colors.grey.shade700),
              ),
              title: Text(row[0], style: const TextStyle(fontWeight: FontWeight.w500)),
              subtitle: const Text('Dec 12, 2024 | 16:42 PM', style: TextStyle(fontSize: 11, color: Colors.grey)),
              trailing: Text(row[1], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
        ],
      ),
    );
  }
}