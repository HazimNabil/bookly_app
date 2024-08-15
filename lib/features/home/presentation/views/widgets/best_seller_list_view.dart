import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const BestSellerBookItem(),
      ),
    );
  }
}
