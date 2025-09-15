import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/persentation/manager/similar%20books/similar_books_cubit.dart';
import 'package:bookstore/features/home/persentation/views/widgets/bookdetailsviewbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookdetailsview extends StatefulWidget {
  const Bookdetailsview({super.key, required this.book});
  final Bookmodel book;

  @override
  State<Bookdetailsview> createState() => _BookdetailsviewState();
}

class _BookdetailsviewState extends State<Bookdetailsview> {
  @override
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(
      context,
    ).fetchSimilarBooks(category: widget.book.volumeInfo!.categories![0]);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(body: Bookdetailsviewbody(bookmodel: widget.book));
  }
}
