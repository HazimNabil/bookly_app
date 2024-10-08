import 'package:bookly_app/features/search/presentation/views/widgets/search_results_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/something_went_wrong.dart';
import '../../manager/search_books_cubit/search_books_cubit.dart';
import 'search_message.dart';
import 'search_results_grid_view.dart';

class SearchResultsBuilder extends StatelessWidget {
  const SearchResultsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksInitial) {
          return const SearchMessage();
        } else if (state is SearchBooksSuccess) {
          return SearchResultsGridView(
            searchResults: state.searchResults,
          );
        } else if (state is SearchBooksFailure) {
          return SomethingWentWrong(errorMessage: state.errorMessage);
        } else {
          return const SearchResultsShimmer();
        }
      },
    );
  }
}
