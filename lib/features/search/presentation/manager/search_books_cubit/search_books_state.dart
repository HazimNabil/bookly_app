part of 'search_books_cubit.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksLoading extends SearchBooksState {}

final class SearchBooksSuccess extends SearchBooksState {
  final List<Book> searchResults;

  const SearchBooksSuccess(this.searchResults);
}

final class SearchBooksFailure extends SearchBooksState {
  final String errorMessage;

  const SearchBooksFailure(this.errorMessage);
}
