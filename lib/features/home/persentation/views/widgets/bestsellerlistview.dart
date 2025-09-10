import 'package:bookstore/features/home/persentation/views/widgets/bestsellerlistviewitem.dart.dart';
import 'package:flutter/material.dart';

class bestsellerlistview extends StatelessWidget {
  const bestsellerlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: bestsellerlistviewitem.booklistviewitem(),
        );
      },
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
