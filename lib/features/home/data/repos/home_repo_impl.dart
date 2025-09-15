import 'package:bookstore/core/errors/failures.dart';
import 'package:bookstore/core/utils/api_service.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failures, List<Bookmodel>>> fetctnewestBooks() async {
    try {
      var data = await apiService.get(
        url: "volumes?Filtering=newest&q=subject:computer science",
      );
      List<Bookmodel> books = [];
      for (var item in data["items"]) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<Bookmodel>>> fetchfeaturedBooks() async {
    try {
      var data = await apiService.get(url: "volumes?q=subject:programming");
      List<Bookmodel> books = [];
      for (var item in data["items"]) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<Bookmodel>>> fetchsimilarBooks({
    required String category,
  }) async {
    try {
      var data = await apiService.get(
        url: "volumes?Filtering=relevence&q=subject:programming",
      );
      List<Bookmodel> books = [];
      for (var item in data["items"]) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
