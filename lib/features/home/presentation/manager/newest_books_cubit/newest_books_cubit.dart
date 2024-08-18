import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book/book.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;

  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errorMessage)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
