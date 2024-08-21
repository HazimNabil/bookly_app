import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/models/book/book.dart';
import '../../../../../core/widgets/custom_book_image.dart';

class SearchResultsGridView extends StatelessWidget {
  final List<Book> searchResults;

  const SearchResultsGridView({super.key, required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          var thumbnail = searchResults[index].volumeInfo.imageLinks?.thumbnail;
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: GestureDetector(
              onTap: () => navigateToDetailsView(context, index),
              child: CustomBookImage(
                imageUrl: thumbnail ?? '',
              ),
            ),
          );
        },
      ),
    );
  }

  void navigateToDetailsView(BuildContext context, int index) {
    context.push(
      AppRouter.kBookDetailsPath,
      extra: searchResults[index],
    );
  }
}
