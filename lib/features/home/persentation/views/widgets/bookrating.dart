import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

class bookrating extends StatelessWidget {
  const bookrating({
    super.key,
    required this.alignment,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment alignment;
  final double rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Icon(Icons.star, color: Colors.amber, size: 20),
        const SizedBox(width: 6.3),
        Text(
          rating.toString(),
          style: Styles.styleRegular16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text('($count)', style: Styles.textstyle14),
        ),
      ],
    );
  }
}
