import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookactionbutton.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookrating.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:flutter/material.dart';

class bookdetailsection extends StatelessWidget {
  const bookdetailsection({super.key, required this.book});
  final Bookmodel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: custombookimage(
            imageurl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        SizedBox(height: 43),
        Text(
          book.volumeInfo.title!,
          style: Styles.textstyle30.copyWith(fontWeight: FontWeight.normal),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textstyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        bookrating(
          alignment: MainAxisAlignment.center,
          rating: 4.8,
          count: 264,
        ),
        const SizedBox(height: 37),
        bookaction(bookmodel: book),
      ],
    );
  }
}
