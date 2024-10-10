import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
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
