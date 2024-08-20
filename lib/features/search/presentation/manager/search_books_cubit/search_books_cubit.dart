import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book/book.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit() : super(SearchBooksInitial());
}
