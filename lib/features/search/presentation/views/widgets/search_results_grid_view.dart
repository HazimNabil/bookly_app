import 'package:flutter/material.dart';

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
            child: CustomBookImage(
              imageUrl: thumbnail ?? '',
            ),
          );
        },
      ),
    );
  }
}
