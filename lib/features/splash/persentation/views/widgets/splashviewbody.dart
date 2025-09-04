import 'package:bookstore/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(Icons.book, size: 50),
        Text(
          'read books',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
