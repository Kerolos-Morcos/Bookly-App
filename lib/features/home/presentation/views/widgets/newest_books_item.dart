import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksItem extends StatelessWidget {
  final BookModel? bookModel;
  const NewestBooksItem({super.key, this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.20,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomBookImage(
              aspectRatio: 2.4 / 3.4,
              imageURL: bookModel!.volumeInfo.imageLinks!.thumbnail,
            ),
            const SizedBox(width: 32),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    maxLines: 2,
                    bookModel!.volumeInfo.title!,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.subTitleLarge24.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel!.volumeInfo.authors![0],
                    style: Styles.subTitleSmall17,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Free',
                        style: Styles.titleLargeBold22,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      BookRating(
                        rating: bookModel!.volumeInfo.averageRating ?? 0,
                        count: bookModel!.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
