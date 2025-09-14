import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Customerror extends StatelessWidget {
  const Customerror({super.key, required this.errmessage});
  final String errmessage;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errmessage, style: Styles.styleRegular16));
  }
}
