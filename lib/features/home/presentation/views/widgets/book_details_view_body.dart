import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 25),
          const SizedBox(
            height: 210,
            child: CustomBookImage(),
          ),
          const SizedBox(height: 40),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(height: 7),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Charles Dickens',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const BookRating(),
          const SizedBox(height: 37),
          const BookAction(),
          const SizedBox(height: 70),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You may also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 25),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
