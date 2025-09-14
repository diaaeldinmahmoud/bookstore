import 'package:bookstore/core/widgets/customerror.dart';
import 'package:bookstore/core/widgets/customloadingindicator.dart';
import 'package:bookstore/features/home/persentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookstore/features/home/persentation/views/widgets/custombookimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class featuredbookslistview extends StatelessWidget {
  const featuredbookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: custombookimage(),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Customerror(errmessage: state.errorMessage);
        } else {
          return Customloadingindicator();
        }
      },
    );
  }
}
