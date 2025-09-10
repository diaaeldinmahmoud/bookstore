import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookactionbutton.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookrating.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:flutter/material.dart';

class bookdetailsection extends StatelessWidget {
  const bookdetailsection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: custombookimage(),
        ),
        SizedBox(height: 43),
        Text(
          "The Jungle Book",
          style: Styles.textstyle30.copyWith(fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            "rudyard kipling",
            style: Styles.textstyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        bookrating(alignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const bookaction(),
      ],
    );
  }
}
