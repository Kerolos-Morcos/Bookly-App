import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AspectRatio(
            aspectRatio: 2.4 / 3.4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/BookHigh.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Harry Potter\nand the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.subTitleLarge24.copyWith(
                    fontFamily: kGTSectraFine,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  'J.K. Rowling',
                  style: Styles.subTitleSmall17,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                const BookRating(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
