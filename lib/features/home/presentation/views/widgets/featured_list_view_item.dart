import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String? imageURL;
  const CustomBookImage({super.key, this.imageURL});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1.70 / 2.5,
        child: CachedNetworkImage(
          imageUrl: imageURL!,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Placeholder(
            child: Icon(Icons.error),
          ),
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
