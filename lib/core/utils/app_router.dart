// import 'package:bookstore/features/home/persentation/views/bookdetailsview.dart';
import 'package:bookstore/features/home/persentation/views/homeview.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookdetailsview.dart';
import 'package:bookstore/features/home/persentation/views/widgets/homeviewbody.dart';
import 'package:bookstore/features/search/persentation/views/searchview.dart';
import 'package:bookstore/features/splash/persentation/views/splashview.dart';
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
        builder: (context, state) => Bookdetailsview(),
      ),
    ],
  );
}
