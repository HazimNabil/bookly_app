import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_book_image.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
