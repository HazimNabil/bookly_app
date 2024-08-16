import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 25),
          BookDetailsSection(),
          SizedBox(height: 37),
          BookAction(),
          SizedBox(height: 70),
          SimilarBooksSection(),
        ],
      ),
    );
  }
}
