import 'package:bookstore/features/home/persentation/views/widgets/custombookdetailappbar.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:bookstore/features/home/persentation/views/widgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SafeArea(child: custombookdetailappbar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: custombookimage(),
          ),
        ],
      ),
    );
  }
}
