import 'package:bookstore/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Row(
        children: [
          Icon(Icons.book, size: 35),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.ksearchview);
            },
            icon: Icon(Icons.search, size: 35, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
