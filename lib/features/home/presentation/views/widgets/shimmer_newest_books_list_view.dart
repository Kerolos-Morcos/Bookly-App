import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerNewestBooksListView extends StatelessWidget {
  const ShimmerNewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[500]!,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CustomBookImage(
                      aspectRatio: 2.4 / 3.4,
                      imageURL:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp8tqoFKYU6xOKd9Vj9YB435sViW4g4RbR4g&s',
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30, // Placeholder for title
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 22, // Placeholder for author
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50, // Placeholder for price
                                height: 20,
                                color: Colors.white,
                              ),
                              Container(
                                width: 50, // Placeholder for rating
                                height: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        childCount: 6,
      ),
    );
  }
}
