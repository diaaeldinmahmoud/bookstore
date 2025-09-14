part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksloading extends NewestBooksState {}

final class NewestBooksfailure extends NewestBooksState {
  final String errorMessage;
  const NewestBooksfailure(this.errorMessage);
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<Bookmodel> books;
  const NewestBooksSuccess(this.books);
}
