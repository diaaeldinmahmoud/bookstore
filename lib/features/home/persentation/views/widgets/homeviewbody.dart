import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bestsellerlistview.dart';
import 'package:bookstore/features/home/persentation/views/widgets/customappbar.dart';
import 'package:bookstore/features/home/persentation/views/widgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 20.0,
                ),
                child: customappbar(),
              ),
              SizedBox(height: 30),
              featuredbookslistview(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('newest books', style: Styles.styleSemiBold16),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: bestsellerlistview(),
          ),
        ),
      ],
    );
  }
}
