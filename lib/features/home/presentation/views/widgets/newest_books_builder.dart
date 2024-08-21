import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/something_went_wrong.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';

class NewestBooksBuilder extends StatelessWidget {
  const NewestBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return NewestBooksListView(books: state.newestBooks);
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: SomethingWentWrong(errorMessage: state.errorMessage),
          );
        } else {
          return const NewestBooksShimmer();
        }
      },
    );
  }
}
