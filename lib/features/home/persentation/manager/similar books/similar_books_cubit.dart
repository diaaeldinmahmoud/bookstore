import 'package:bloc/bloc.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksloading());
    var result = await homeRepo.fetchsimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksfailure(failure.errorMessage));
      },
      (books) {
        emit(SimilarBookssuccess(books));
      },
    );
  }
}
