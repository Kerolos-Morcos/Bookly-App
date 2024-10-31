import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/shimmer_featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          final reversedBooks = state.featuredBooks.reversed.toList();
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.featuredBooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: index == reversedBooks.length - 1 ? 0 : 14.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: reversedBooks[index]);
                    },
                    child: CustomBookImage(
                      aspectRatio: 1.70 / 2.5,
                      imageURL: reversedBooks[index]
                              .volumeInfo
                              .imageLinks
                              ?.thumbnail ??
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp8tqoFKYU6xOKd9Vj9YB435sViW4g4RbR4g&s',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const ShimmerFeaturedBooksListView();
        }
      },
    );
  }
}
