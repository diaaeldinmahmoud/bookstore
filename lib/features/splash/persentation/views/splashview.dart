import 'package:bookstore/features/splash/persentation/views/widgets/splashviewbody.dart';
import 'package:flutter/material.dart';

class splashview extends StatelessWidget {
  const splashview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100B20),
      body: Center(child: Splashviewbody()),
    );
  }
}
