import 'package:flutter/material.dart';
import 'screens/popular_menu_screen.dart';
import 'screens/course_details_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/organizer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Практическая работа',
      home: const MainMenuScreen(), 
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Практическая работа')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _btn(context, '1. Popular Menu (простой)', const PopularMenuScreen()),
          _btn(context, '2. Course Details (простой)', const CourseDetailsScreen()),
          _btn(context, '3. My E-Wallet (сложный)', const WalletScreen()),
          _btn(context, '4. Organizer (сложный)', const OrganizerScreen()),
        ],
      ),
    );
  }

  Widget _btn(BuildContext context, String title, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Text(title),
      ),
    );
  }
}