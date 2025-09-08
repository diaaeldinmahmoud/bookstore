import 'package:bookstore/features/home/persentation/views/widgets/homeviewbody.dart';
import 'package:bookstore/features/splash/persentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeview = '/homeview';
  static const String bookdetailsview = '/bookdetailsview';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => splashview()),
      GoRoute(path: homeview, builder: (context, state) => Homeviewbody()),
    ],
  );
}
