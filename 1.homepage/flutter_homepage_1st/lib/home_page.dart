import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 192, 212, 218),
      appBar: AppBar(
        title: const Text('Home page'),
        backgroundColor: const Color.fromARGB(255, 115, 150, 160),
        foregroundColor: const Color.fromARGB(255, 237, 233, 233),
        leading: const Icon(Icons.home, size: 30),
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'Settings',
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: GoogleFonts.lato(
              fontSize: isHovered ? 36 : 32,
              fontWeight: FontWeight.bold,
              color: isHovered
                  ? const Color.fromARGB(255, 115, 150, 160)
                  : const Color.fromARGB(255, 55, 79, 86),
            ),
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
