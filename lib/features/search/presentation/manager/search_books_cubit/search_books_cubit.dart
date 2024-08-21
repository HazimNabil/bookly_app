import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  final SearchRepo searchRepo;

  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  Future<void> searchBooks(String title) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.searchBooks(title);
    result.fold(
      (failure) => emit(SearchBooksFailure(failure.errorMessage)),
      (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
