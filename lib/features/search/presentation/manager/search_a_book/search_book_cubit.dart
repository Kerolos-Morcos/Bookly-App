import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;

  Future fetchSearchBooksResult(BookModel bookName) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchBooksResult(
      bookName: bookName.volumeInfo.title!,
    );
    result.fold(
      (failure) => emit(
        SearchBooksFailure(errorMessage: failure.errorMessage),
      ),
      (searchBooks) => emit(
        SearchBooksSuccess(searchBooks: searchBooks),
      ),
    );
  }
}
