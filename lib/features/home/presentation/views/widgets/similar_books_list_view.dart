import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/models/book/book.dart';
import '../../../../../core/widgets/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  final List<Book> books;

  const SimilarBooksListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var thumbnail = books[index].volumeInfo.imageLinks?.thumbnail;
          return GestureDetector(
            onTap: () => navigateToDetailsView(context, index),
            child: CustomBookImage(imageUrl: thumbnail ?? ''),
          );
        },
      ),
    );
  }

  Future<Object?> navigateToDetailsView(BuildContext context, int index) {
    return context.push(
      AppRouter.kBookDetailsPath,
      extra: books[index],
    );
  }
}
