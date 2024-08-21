import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/something_went_wrong.dart';
import '../../manager/similar_books_cubit/similar_books_cubit.dart';
import '../../../../../core/widgets/horizontal_list_shimmer.dart';

class SimilarBooksBuilder extends StatelessWidget {
  const SimilarBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SimilarBooksListView(books: state.similarBooks);
        } else if (state is SimilarBooksFailure) {
          return SomethingWentWrong(errorMessage: state.errorMessage);
        } else {
          return const HorizontalListShimmer(heightRatio: 0.15);
        }
      },
    );
  }
}
