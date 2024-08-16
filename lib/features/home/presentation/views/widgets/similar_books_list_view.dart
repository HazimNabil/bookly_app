import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
      ),
    );
  }
}
