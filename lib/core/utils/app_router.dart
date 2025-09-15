// import 'package:bookstore/features/home/persentation/views/bookdetailsview.dart';
import 'package:bookstore/core/utils/service_locator.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/data/repos/home_repo_impl.dart';
import 'package:bookstore/features/home/persentation/manager/similar%20books/similar_books_cubit.dart';
import 'package:bookstore/features/home/persentation/views/homeview.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookdetailsview.dart';
import 'package:bookstore/features/home/persentation/views/widgets/homeviewbody.dart';
import 'package:bookstore/features/search/persentation/views/searchview.dart';
import 'package:bookstore/features/splash/persentation/views/splashview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String khomeview = '/homeview';
  static const String kbookdetailsview = '/bookdetailsview';
  static const String ksearchview = '/searchview';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => splashview()),
      GoRoute(path: "/homeview", builder: (context, state) => homeview()),
      GoRoute(path: "/searchview", builder: (context, state) => Searchview()),
      GoRoute(
        path: "/bookdetailsview",
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: Bookdetailsview(book: state.extra as Bookmodel),
        ),
      ),
    ],
  );
}
