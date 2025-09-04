import 'package:bookstore/features/home/persentation/views/widgets/customappbar.dart';
import 'package:bookstore/features/home/persentation/views/widgets/featuredbooklistview.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [customappbar(), featuredbookslistview()]);
  }
}
