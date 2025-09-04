import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Icon(Icons.book, size: 35),
          Spacer(),
          Icon(Icons.search, size: 35, color: Colors.white),
        ],
      ),
    );
  }
}
