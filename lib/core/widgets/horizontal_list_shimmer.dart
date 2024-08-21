import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/skelton.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HorizontalListShimmer extends StatelessWidget {
  final double heightRatio;

  const HorizontalListShimmer({super.key, required this.heightRatio});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kShimmerBaseColor,
      highlightColor: kShimmerHighlightColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * heightRatio,
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
    );
  }
}
