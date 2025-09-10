import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/persentation/views/widgets/similarbookslistview.dart';
import 'package:flutter/material.dart';

class similarbookssection extends StatelessWidget {
  const similarbookssection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "you can also like ",
            style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 16),
        similarlistview(),
      ],
    );
  }
}
