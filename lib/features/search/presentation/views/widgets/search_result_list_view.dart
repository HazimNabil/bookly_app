import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/core/widgets/something_went_wrong.dart';
import 'package:bookly_app/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_book_image.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksInitial) {
          return const Expanded(
            child: Center(
              child: Text(
                "Type in the title to find the book you're looking for!",
                style: Styles.textStyle18,
                textAlign: TextAlign.center,
              ),
            ),
          );
        } else if (state is SearchBooksSuccess) {
          return Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.searchResults.length,
              itemBuilder: (context, index) {
                var thumbnail =
                    state.searchResults[index].volumeInfo.imageLinks?.thumbnail;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: CustomBookImage(
                    imageUrl: thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        } else if (state is SearchBooksFailure) {
          return SomethingWentWrong(errorMessage: state.errorMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
