import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/models/book/book.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  final List<Book> books;

  const FeaturedBooksListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.builder(
          itemCount: books.length,
          padding: const EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var thumbnail = books[index].volumeInfo.imageLinks?.thumbnail;
            return GestureDetector(
              onTap: () => navigateToDetailsView(context, index),
              child: CustomBookImage(
                imageUrl: thumbnail ?? '',
              ),
            );
          },
        ),
      ),
    );
  }

  void navigateToDetailsView(BuildContext context, int index) {
    context.push(
      AppRouter.kBookDetailsPath,
      extra: books[index],
    );
  }
}
