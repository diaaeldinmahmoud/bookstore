import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

class bookrating extends StatelessWidget {
  const bookrating({super.key, required this.alignment});
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Icon(Icons.star, color: Colors.amber, size: 20),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.styleRegular16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Opacity(opacity: 0.5, child: Text('(264)', style: Styles.textstyle14)),
      ],
    );
  }
}
