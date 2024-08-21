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
        if (state is SearchBooksSuccess) {
          return Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: CustomBookImage(
                    imageUrl:
                        'http://books.google.com/books/content?id=_ZoWwQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
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
