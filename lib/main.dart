import 'package:bookstore/core/utils/api_service.dart';
import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/utils/service_locator.dart';
import 'package:bookstore/features/home/data/repos/home_repo_impl.dart';
import 'package:bookstore/features/home/persentation/manager/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookstore/features/home/persentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookstore/features/splash/persentation/views/splashview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const bookstore());
}

class bookstore extends StatelessWidget {
  const bookstore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setupServiceLocator();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(Kprimarycolor),
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
