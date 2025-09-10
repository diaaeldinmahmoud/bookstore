import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookrating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bestsellerlistviewitem extends StatelessWidget {
  const bestsellerlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookdetailsview);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/book cover.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'The Jungle Book asdasdasdasd',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textstyle20,
                  ),
                  const SizedBox(height: 3),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text('Rudyard Kipling', style: Styles.textstyle14),
                  ),
                  const SizedBox(height: 3),

                  Row(
                    children: [
                      Text(
                        '19.99\$',
                        style: Styles.textstyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const bookrating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
