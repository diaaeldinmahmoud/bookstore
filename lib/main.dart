import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/features/splash/persentation/views/splashview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

void main() {
  runApp(const bookstore());
}

class bookstore extends StatelessWidget {
  const bookstore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(Kprimarycolor),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
