import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Book>>> searchBooks(String title) async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&q=$title',
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
