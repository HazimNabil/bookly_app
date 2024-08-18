import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import '../../../../../core/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 210,
          child: CustomBookImage(
            imageUrl:
                'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/07/attachment_78895234.png?auto=format&q=60&fit=max&w=930',
          ),
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
        const BookRating(rating: 0, ratingsCount: 0,)
      ],
    );
  }
}
