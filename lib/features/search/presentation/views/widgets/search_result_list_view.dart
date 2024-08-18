import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_book_image.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: CustomBookImage(
              imageUrl:
                  'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/07/attachment_78895234.png?auto=format&q=60&fit=max&w=930',
            ),
          );
        },
      ),
    );
  }
}
