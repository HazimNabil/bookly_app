import 'package:bookly_app/features/search/presentation/views/widgets/search_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SearchField(),
        ],
      ),
    );
  }
}
