import 'package:bookly_app/features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/models/book/book.dart';

class NewestBooksListView extends StatelessWidget {
  final List<Book> books;

  const NewestBooksListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: books.length,
        (context, index) => NewestBookItem(book: books[index]),
      ),
    );
  }
}
