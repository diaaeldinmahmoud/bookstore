import 'package:bookstore/core/errors/failures.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookstore/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<Bookmodel>>> fetchbestsellerBooks() {
    // TODO: implement fetchbestsellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<Bookmodel>>> fetchfeaturedBooks() {
    // TODO: implement fetchfeaturedBooks
    throw UnimplementedError();
  }
}
