import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('3D Design Basic'),
        backgroundColor: Colors.white, foregroundColor: Colors.black, elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Color(0xFF0F1B4C), Color(0xFF2A47FF)],
                begin: Alignment.topLeft, end: Alignment.bottomRight,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Row(children: [
            Icon(Icons.star, color: Colors.amber, size: 18),
            Text(' 4.6  '),
            Text('4.3k views', style: TextStyle(color: Colors.grey)),
          ]),
          const SizedBox(height: 12),
          const Text('3D Design Basic',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'In this course you will learn how to build a 3D dimensional product. '
            'There are 24 premium lessons waiting for you.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          const Text('24 Lessons (20 hours)',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2A47FF),
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: const Text('Enroll — \$24.99'),
        ),
      ),
    );
  }
}