import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 25),
          SizedBox(
            height: 210,
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
