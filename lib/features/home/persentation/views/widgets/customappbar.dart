import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
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
