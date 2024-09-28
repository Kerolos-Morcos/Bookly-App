import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          '19.99 €',
          style: Styles.subTitleLarge24,
        ),
        Spacer(flex: 1),
        Padding(
          padding: EdgeInsets.only(bottom: 5.0, right: 2),
          child: Icon(
            Icons.star_rounded,
            color: Color(0xffFFDD4F),
            size: 23,
          ),
        ),
        Text(
          '4.8',
          style: Styles.subTitleMedium18,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            '(2390)',
            style: Styles.subTitleSmall17,
          ),
        ),
      ],
    );
  }
}
