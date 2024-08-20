import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_book_image.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: CustomBookImage(
              imageUrl:
                  'http://books.google.com/books/content?id=_ZoWwQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
            ),
          );
        },
      ),
    );
  }
}
