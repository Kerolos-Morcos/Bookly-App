import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomBookDetailsAppBar(),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.26),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 15),
        Text(
          'The Jungle Book',
          style: Styles.titleLargeBold22.copyWith(
            fontSize: 30,
            fontFamily: kGTSectraFine,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 2),
        Text(
          'Rudyard Kipling',
          style: Styles.subTitleMedium18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: BooksAction(),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'You can also like',
            style: Styles.subTitleSmall17
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: BookDetailsListView(),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
