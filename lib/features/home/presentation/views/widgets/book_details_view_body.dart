import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final Book book;

  const BookDetailsViewBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          BookDetailsSection(book: book),
          const SizedBox(height: 30),
          BookAction(previewUrl: book.volumeInfo.previewLink),
          const Expanded(
            child: SizedBox(),
          ),
          const SimilarBooksSection(),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}
