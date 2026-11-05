import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final myItems = [
      {"img": "assets/images/1.png", "title": "First"},
      {"img": "assets/images/2.png", "title": "Second"},
      {"img": "assets/images/3.png", "title": "Third"},
      {"img": "assets/images/flutter.png", "title": "Flutter"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListviewPage"),
        backgroundColor: const Color.fromARGB(255, 47, 5, 188),
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Image.asset(
                  myItems[index]["img"]!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 12),
                Text(myItems[index]["title"]!),
              ],
            ),
          );
        },
      ),
    );
  }
}
