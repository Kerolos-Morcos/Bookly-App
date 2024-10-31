import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: CustomBookDetailsAppBar(),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.26),
                child: CustomBookImage(
                  aspectRatio: 1.70 / 2.5,
                  imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ??
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp8tqoFKYU6xOKd9Vj9YB435sViW4g4RbR4g&s',
                ),
              ),
              const SizedBox(height: 18),
              Text(
                bookModel.volumeInfo.title ?? 'New Book',
                style: Styles.titleLargeBold22.copyWith(
                  fontSize: 30,
                  fontFamily: kGTSectraFine,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2),
              Text(
                bookModel.volumeInfo.authors?[0] ?? 'Unknown Author',
                style: Styles.subTitleMedium18.copyWith(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              BookRating(
                count: bookModel.volumeInfo.ratingsCount ?? 0,
                rating: bookModel.volumeInfo.averageRating ?? 0,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(height: 20),
              // Book's Action Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: BooksAction(
                  bookModel: bookModel,
                ),
              ),
              const Expanded(
                child: SizedBox(height: 30),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.subTitleSmall17.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Similar Books List
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: SimilarListView(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
