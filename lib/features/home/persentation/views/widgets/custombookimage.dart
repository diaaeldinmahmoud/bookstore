import 'package:flutter/material.dart';

class custombookimage extends StatelessWidget {
  const custombookimage({super.key, required this.imageurl});
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
      ),
    );
  }
}
