import 'package:flutter/material.dart';

class PopularMenuScreen extends StatelessWidget {
  const PopularMenuScreen({super.key});

  static const _items = [
    ['Original S', 'Crispy Fried', '\$8', Colors.orange],
    ['Fresh Salad', 'Vegetables', '\$10', Colors.green],
    ['Yummie Ice Cream', 'Chocolate', '\$6', Colors.brown],
    ['Vegan Special', 'Tofu', '\$11', Colors.teal],
    ['Mixed Pasta', 'Beef Sauce', '\$13', Colors.redAccent],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FB),
      appBar: AppBar(
        title: const Text('Popular Menu'),
        backgroundColor: Colors.white, foregroundColor: Colors.black, elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _items.length,
        itemBuilder: (_, i) {
          final it = _items[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 8)],
            ),
            child: Row(children: [
              CircleAvatar(backgroundColor: it[3] as Color, radius: 24),
              const SizedBox(width: 12),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(it[0] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(it[1] as String, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
                ],
              )),
              Text(it[2] as String,
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16)),
            ]),
          );
        },
      ),
    );
  }
}