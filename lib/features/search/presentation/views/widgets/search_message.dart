import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchMessage extends StatelessWidget {
  const SearchMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: Text(
          "Type in the title to find the book you're looking for!",
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
