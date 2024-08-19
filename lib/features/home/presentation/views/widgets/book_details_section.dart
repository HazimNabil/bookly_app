import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import '../../../../../core/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  final Book book;

  const BookDetailsSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210,
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 40),
         Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 7),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(
          rating: 0,
          ratingsCount: 0,
        )
      ],
    );
  }
}
