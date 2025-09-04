import 'package:flutter/material.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home View')),
      body: const Center(
        child: Text(
          'Welcome to the Home View!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
