import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/persentation/views/widgets/customappbar.dart';
import 'package:bookstore/features/home/persentation/views/widgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customappbar(),
          SizedBox(height: 30),
          featuredbookslistview(),
          SizedBox(height: 30),
          Text('Best Seller', style: Styles.styleSemiBold16),
          bestsellerlistviewitem(),
        ],
      ),
    );
  }
}

class bestsellerlistviewitem extends StatelessWidget {
  const bestsellerlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/book cover.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
