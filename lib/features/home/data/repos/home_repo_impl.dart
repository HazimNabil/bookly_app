import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science',
      );
      List items = data['items'];
      var books = items.map((item) => Book.fromJson(item)).toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List items = data['items'];
      var books = items.map((item) => Book.fromJson(item)).toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchSimilarBooks(String category) async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming',
      );
      List items = data['items'];
      var books = items.map((item) => Book.fromJson(item)).toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
