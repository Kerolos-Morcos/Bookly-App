import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              FeaturedBooksListView(),
              SizedBox(height: 40),
              Text(
                'Best Seller',
                style: Styles.titleLargeBold22,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        NewestBooksListView()
      ],
    );
  }
}
