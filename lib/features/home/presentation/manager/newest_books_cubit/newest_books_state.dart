part of 'newest_books_cubit.dart';

sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newestBooks;
  NewestBooksSuccess({required this.newestBooks});
}

final class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;
  NewestBooksFailure({required this.errorMessage});
}
