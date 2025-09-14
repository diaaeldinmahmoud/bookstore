import 'package:bookstore/core/widgets/customerror.dart';
import 'package:bookstore/core/widgets/customloadingindicator.dart';
import 'package:bookstore/features/home/persentation/manager/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bestsellerlistviewitem.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bestsellerlistview extends StatelessWidget {
  const bestsellerlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: bestsellerlistviewitem(bookmodel: state.books[index]),
              );
            },
            itemCount: state.books.length,
            physics: NeverScrollableScrollPhysics(),
          );
        } else if (state is NewestBooksfailure) {
          return Customerror(errmessage: state.errorMessage);
        } else {
          return Customloadingindicator();
        }
      },
    );
  }
}
