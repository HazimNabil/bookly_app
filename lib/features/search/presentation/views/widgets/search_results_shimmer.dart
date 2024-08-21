import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/skelton.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SearchResultsShimmer extends StatelessWidget {
  const SearchResultsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Shimmer.fromColors(
        baseColor: kShimmerBaseColor,
        highlightColor: kShimmerHighlightColor,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 12.0, right: 12),
              child: Skelton(),
            );
          },
        ),
      ),
    );
  }
}
