import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookrating.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bestsellerlistviewitem extends StatelessWidget {
  const bestsellerlistviewitem({super.key, required this.bookmodel});
  final Bookmodel bookmodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookdetailsview, extra: bookmodel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            custombookimage(
              imageurl: bookmodel.volumeInfo.imageLinks.thumbnail,
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                children: [
                  Text(
                    bookmodel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textstyle20,
                  ),
                  const SizedBox(height: 3),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      bookmodel.volumeInfo.authors![0],
                      style: Styles.textstyle14,
                    ),
                  ),
                  const SizedBox(height: 3),

                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textstyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      bookrating(
                        alignment: MainAxisAlignment.start,
                        rating: 0,
                        count: 0,
                      ),
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
