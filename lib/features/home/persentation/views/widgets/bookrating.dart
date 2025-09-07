import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

class bookrating extends StatelessWidget {
  const bookrating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: 20),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textstyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Text('(264)', style: Styles.textstyle14),
      ],
    );
  }
}
