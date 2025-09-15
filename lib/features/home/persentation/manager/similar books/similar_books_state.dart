part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksloading extends SimilarBooksState {}

final class SimilarBooksfailure extends SimilarBooksState {
  final String errorMessage;
  const SimilarBooksfailure(this.errorMessage);
}

final class SimilarBookssuccess extends SimilarBooksState {
  final List<Bookmodel> books;
  const SimilarBookssuccess(this.books);
}
