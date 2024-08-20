import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book/book.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<Book>>> searchBooks(String title);
}
