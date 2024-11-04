part of 'search_book_cubit.dart';

sealed class SearchBookState {}

final class SearchBookInitial extends SearchBookState {}

final class SearchBooksLoading extends SearchBookState {}

final class SearchBooksSuccess extends SearchBookState {
  final List<BookModel> searchBooks;
  SearchBooksSuccess({required this.searchBooks});
}

final class SearchBooksFailure extends SearchBookState {
  final String errorMessage;
  SearchBooksFailure({required this.errorMessage});
}
