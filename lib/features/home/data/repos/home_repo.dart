import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
  Future<Either<Failure, List<Book>>> fetchSimilarBooks(String category);
}
