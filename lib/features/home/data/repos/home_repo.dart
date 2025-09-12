import 'package:bookstore/core/errors/failures.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<Bookmodel>>> fetchbestsellerBooks();
  Future<Either<Failures, List<Bookmodel>>> fetchfeaturedBooks();
}
