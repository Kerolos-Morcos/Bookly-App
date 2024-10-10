import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70 / 2.5,
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
