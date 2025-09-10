import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/features/home/persentation/views/homeview.dart';
import 'package:bookstore/features/splash/persentation/views/widgets/slidingtext.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initstateslidinganimation();
    navigatetohome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(Icons.book, size: 50),
        slidingtext(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initstateslidinganimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }

  void navigatetohome() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(
      //   () => const homeview(),
      //   transition: Transition.fade,
      //   duration: Kdurationsplash,
      // );
      GoRouter.of(context).push(AppRouter.khomeview);
    });
  }
}
