import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('3D Design Basic', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: Colors.white, 
        foregroundColor: Colors.black, 
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, size: 20),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Color(0xFF0F1B4C), Color(0xFF2A47FF)],
                begin: Alignment.topLeft, end: Alignment.bottomRight,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              const Text(' 4.6 ', style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('4.3k views', style: TextStyle(color: Colors.grey)),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(10)),
                child: const Text('Best seller', style: TextStyle(color: Colors.blue, fontSize: 12)),
              )
            ],
          ),
          const SizedBox(height: 12),
          const Text('3D Design Basic', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'In this course you will learn how to build a 3D dimensional product. '
            'There are 24 premium lessons waiting for you.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('24 Lessons (20 hours)', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('See all', style: TextStyle(color: Colors.blue)),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              children: [
                Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(color: Colors.purple.shade50, borderRadius: BorderRadius.circular(8)),
                  child: const Icon(Icons.view_in_ar, color: Colors.purple),
                ),
                const SizedBox(width: 12),
                const Expanded(child: Text('Introduction to 3D', style: TextStyle(fontWeight: FontWeight.bold))),
                const Icon(Icons.check_circle_outline, color: Colors.blue),
              ],
            ),
          ),
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
          child: const Text('Enroll — \$24.99', style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}