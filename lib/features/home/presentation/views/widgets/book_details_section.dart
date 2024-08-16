import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const BookRating()
      ],
    );
  }
}
