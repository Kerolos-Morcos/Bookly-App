import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFeaturedBooksListView extends StatelessWidget {
  const ShimmerFeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.33,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[500]!,
              child: const CustomBookImage(
                aspectRatio: 1.70 / 2.5,
                imageURL:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp8tqoFKYU6xOKd9Vj9YB435sViW4g4RbR4g&s',
              ),
            ),
          );
        },
      ),
    );
  }
}
