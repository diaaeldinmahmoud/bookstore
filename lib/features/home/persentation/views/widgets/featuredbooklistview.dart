import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:flutter/material.dart';

class featuredbookslistview extends StatelessWidget {
  const featuredbookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: custombookimage(),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
