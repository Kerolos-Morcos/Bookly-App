import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: NewestBooksItem(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
