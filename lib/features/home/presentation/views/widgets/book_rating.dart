import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final num rating;
  final int ratingsCount;

  const BookRating({
    super.key,
    required this.rating,
    required this.ratingsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow[700],
          size: 16,
        ),
        const SizedBox(width: 7),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          '($ratingsCount)',
          style: Styles.textStyle14.copyWith(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
