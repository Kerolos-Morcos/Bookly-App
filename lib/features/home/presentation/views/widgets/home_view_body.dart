import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      children: const [
        SizedBox(height: 20),
        FeaturedBooksListView(),
        SizedBox(height: 40),
        Text(
          textAlign: TextAlign.left,
          'Best Seller',
          style: Styles.titleMedium24,
        ),
      ],
    );
  }
}
