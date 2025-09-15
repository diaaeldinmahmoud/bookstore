import 'package:bookstore/core/widgets/customerror.dart';
import 'package:bookstore/core/widgets/customloadingindicator.dart';
import 'package:bookstore/features/home/persentation/manager/similar%20books/similar_books_cubit.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class similarlistview extends StatelessWidget {
  const similarlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBookssuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: custombookimage(
                    imageurl:
                        'https://in.pinterest.com/pin/physics-cover-page-design-ideas--5629568276392855/',
                  ),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
            ),
          );
        } else if (state is SimilarBooksfailure) {
          return Customerror(errmessage: state.errorMessage);
        } else {
          return Customloadingindicator();
        }
      },
    );
  }
}
