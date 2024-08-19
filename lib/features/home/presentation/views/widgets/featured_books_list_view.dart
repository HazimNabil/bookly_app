import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/core/widgets/something_went_wrong.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                itemCount: state.featuredBooks.length,
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var thumbnail = state
                      .featuredBooks[index].volumeInfo.imageLinks?.thumbnail;
                  return GestureDetector(
                    onTap: () => context.go(
                      AppRouter.kBookDetailsPath,
                      extra: state.featuredBooks[index],
                    ),
                    child: CustomBookImage(
                      imageUrl: thumbnail ?? '',
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return SliverToBoxAdapter(
            child: SomethingWentWrong(
              errorMessage: state.errorMessage,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: LoadingIndicator(),
          );
        }
      },
    );
  }
}
