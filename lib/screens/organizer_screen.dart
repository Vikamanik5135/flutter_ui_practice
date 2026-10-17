import 'package:flutter/material.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Organizer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: Colors.white, 
        foregroundColor: Colors.black, 
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, size: 20),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFF3E8FF), // Светло-фиолетовый фон
            child: Icon(Icons.person, size: 60, color: Colors.purple),
          ),
          const SizedBox(height: 12),
          const Text('Albert Flores', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
            _Stat('2.368', 'Followers'),
            _Stat('346', 'Following'),
            _Stat('13', 'Events'),
          ]),
          const SizedBox(height: 24),
          Row(children: [
            Expanded(child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              ),
              child: const Text('Follow', style: TextStyle(color: Colors.blue)),
            )),
            const SizedBox(width: 12),
            Expanded(child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2A47FF),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              ),
              child: const Text('Message'),
            )),
          ]),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12)),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
              Text('About', style: TextStyle(color: Colors.grey, fontSize: 15)),
              Text('Events', style: TextStyle(color: Colors.grey, fontSize: 15)),
              Text('Reviews', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15)),
            ]),
          ),
          const SizedBox(height: 16),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
            'eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          const SizedBox(height: 8),
          const Text('Read more...', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
        ]),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String value, label;
  const _Stat(this.value, this.label);
  
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
    ]);
  }
}