import 'package:bookstore/features/search/persentation/views/widgets/customsearchtextfield.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [SafeArea(child: customsearchtextfield())]),
    );
  }
}
