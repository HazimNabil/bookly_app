import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/skelton.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedBooksShimmer extends StatelessWidget {
  const FeaturedBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Shimmer.fromColors(
        baseColor: kShimmerBaseColor,
        highlightColor: kShimmerHighlightColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
            itemCount: 6,
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: Skelton(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
