import 'package:bookstore/features/splash/persentation/views/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const bookstore());
}

class bookstore extends StatelessWidget {
  const bookstore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: splashview());
  }
}
