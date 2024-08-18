import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/core/widgets/something_went_wrong.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.newestBooks.length,
              (context, index) => NewestBookItem(
                book: state.newestBooks[index],
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: SomethingWentWrong(errorMessage: state.errorMessage),
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
