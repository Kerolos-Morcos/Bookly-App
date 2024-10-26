import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String? imageURL;
  const CustomBookImage({super.key, this.imageURL});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70 / 2.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            alignment: Alignment.centerLeft,
            fit: BoxFit.fill,
            image: NetworkImage(
              imageURL!,
            ),
          ),
        ),
      ),
    );
  }
}
