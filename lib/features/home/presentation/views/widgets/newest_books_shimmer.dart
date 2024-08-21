import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/skelton.dart';

class NewestBooksShimmer extends StatelessWidget {
  const NewestBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Shimmer.fromColors(
        baseColor: kShimmerBaseColor,
        highlightColor: kShimmerHighlightColor,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: Skelton(width: 55),
              title: Skelton(height: 10),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Skelton(height: 8, width: 140),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skelton(width: 40, height: 10),
                      Skelton(width: 40, height: 10),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
