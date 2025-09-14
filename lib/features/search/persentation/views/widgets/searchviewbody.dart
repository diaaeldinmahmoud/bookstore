import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bestsellerlistviewitem.dart.dart';
import 'package:bookstore/features/search/persentation/views/widgets/customsearchtextfield.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          customsearchtextfield(),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('search result', style: Styles.styleSemiBold16),
          ),
          Expanded(child: const searchresultlistview()),
        ],
      ),
    );
  }
}

class searchresultlistview extends StatelessWidget {
  const searchresultlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          // child: bestsellerlistviewitem(bookmodel: null)
          child: Text("asdas"),
        );
      },
      itemCount: 10,
    );
    ;
  }
}
