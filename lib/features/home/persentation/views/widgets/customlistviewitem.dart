import 'package:flutter/material.dart';

class custmomlistviewitem extends StatelessWidget {
  const custmomlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/book cover.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
      ),
    );
  }
}
