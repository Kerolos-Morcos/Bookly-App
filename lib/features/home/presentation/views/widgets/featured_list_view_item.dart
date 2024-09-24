import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.65 / 2.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            alignment: Alignment.centerLeft,
            fit: BoxFit.fill,
            image: AssetImage('assets/images/BookHigh.png'),
          ),
        ),
      ),
    );
  }
}
