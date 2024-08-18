import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SliverToBoxAdapter(
          child: SizedBox(height: 50),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text('Newest', style: Styles.textStyle18),
          ),
        ),
        NewestBooksListView(),
      ],
    );
  }
}
