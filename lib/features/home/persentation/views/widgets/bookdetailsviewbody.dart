import 'package:bookstore/features/home/persentation/views/widgets/custombookdetailappbar.dart';
import 'package:bookstore/features/home/persentation/views/widgets/customlistviewitem.dart';
import 'package:bookstore/features/home/persentation/views/widgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(child: custombookdetailappbar()),
        featuredbookslistviewitem(),
      ],
    );
  }
}
