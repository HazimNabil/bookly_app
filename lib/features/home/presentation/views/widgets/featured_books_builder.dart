import 'package:bookly_app/core/widgets/something_went_wrong.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksBuilder extends StatelessWidget {
  const FeaturedBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return FeaturedBooksListView(books: state.featuredBooks);
        } else if (state is FeaturedBooksFailure) {
          return SliverToBoxAdapter(
            child: SomethingWentWrong(errorMessage: state.errorMessage),
          );
        } else {
          return const FeaturedBooksShimmer();
        }
      },
    );
  }
}
