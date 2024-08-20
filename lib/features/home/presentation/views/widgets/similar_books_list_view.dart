import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/core/widgets/something_went_wrong.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var thumbnail =
                    state.similarBooks[index].volumeInfo.imageLinks?.thumbnail;
                return GestureDetector(
                  onTap: () => context.push(
                    AppRouter.kBookDetailsPath,
                    extra: state.similarBooks[index],
                  ),
                  child: CustomBookImage(
                    imageUrl: thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return SomethingWentWrong(errorMessage: state.errorMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
