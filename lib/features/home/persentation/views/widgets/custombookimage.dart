import 'package:flutter/material.dart';

class custombookimage extends StatelessWidget {
  const custombookimage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/book cover.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
      ),
    );
  }
}
