import 'package:bookstore/core/errors/failures.dart';
import 'package:bookstore/core/utils/api_service.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failures, List<Bookmodel>>> fetctnewestBooks() async {
    try {
      var data = await apiService.get(
        url: "volumes?Filtering=newest&q=subject:programming",
      );
      List<Bookmodel> books = [];
      for (var item in data["items"]) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<Bookmodel>>> fetchfeaturedBooks() {
    // TODO: implement fetchfeaturedBooks
    throw UnimplementedError();
  }
}
