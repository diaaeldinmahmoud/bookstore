import 'package:bookstore/features/home/persentation/views/widgets/customappbar.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookdetailappbar.dart';
import 'package:flutter/material.dart';

class Bookdetailsview extends StatelessWidget {
  const Bookdetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [SafeArea(child: custombookdetailappbar())]),
    );
  }
}
