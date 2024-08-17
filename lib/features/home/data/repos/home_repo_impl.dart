import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science',
      );
      List<Map<String, dynamic>> items = data['items'];
      var books = items.map((item) => Book.fromJson(item)).toList();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
