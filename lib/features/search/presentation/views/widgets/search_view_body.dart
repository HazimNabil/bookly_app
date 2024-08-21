import 'package:bookly_app/features/search/presentation/views/widgets/search_field.dart';
import 'package:flutter/material.dart';

import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          SearchField(),
          const SizedBox(height: 30),
          const SearchResultListView(),
        ],
      ),
    );
  }
}
