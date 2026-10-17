import 'package:flutter/material.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Organizer'),
        backgroundColor: Colors.white, foregroundColor: Colors.black, elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
          ),
          const SizedBox(height: 12),
          const Text('Albert Flores',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
            _Stat('2.368', 'Followers'),
            _Stat('346', 'Following'),
            _Stat('13', 'Events'),
          ]),
          const SizedBox(height: 20),
          Row(children: [
            Expanded(child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              ),
              child: const Text('Follow'),
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
          const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text('About', style: TextStyle(color: Colors.grey)),
            Text('Events', style: TextStyle(color: Colors.grey)),
            Text('Reviews',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
          ]),
          const Divider(height: 24),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
            'eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: TextStyle(color: Colors.grey),
          ),
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