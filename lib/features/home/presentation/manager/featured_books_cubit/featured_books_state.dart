part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> featuredBooks;
  FeaturedBooksSuccess(this.featuredBooks);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailure(this.errorMessage);
}
