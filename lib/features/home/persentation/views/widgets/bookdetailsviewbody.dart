import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/core/widgets/custombutton.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookactionbutton.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookrating.dart';
import 'package:bookstore/features/home/persentation/views/widgets/booksdetailssection.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookdetailappbar.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:bookstore/features/home/persentation/views/widgets/similarbookslistview.dart';
import 'package:bookstore/features/home/persentation/views/widgets/similarbookssection.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SafeArea(child: custombookdetailappbar()),
                const bookdetailsection(),

                const SizedBox(height: 50),

                const similarbookssection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
