import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/utils/cache_manager.dart';
import '../../model/book_model.dart';
import '../../views/bookreview/widget/reading_state.dart';

part 'bookreview_view_model.g.dart';

// @freezed
// class BookViewState with _$BookViewState {
//   const factory BookViewState({
//     @Default(false) bool isExpanded,
//     @Default(ReadingState.initial) ReadingState readingState,
//   }) = _BookViewState;
// }

@riverpod
class BookReviewViewModel extends _$BookReviewViewModel {
  @override
  void build() {}

  Future<void> modifyMyBookReadingState(
      String title, ReadingState readingState) async {
    try {
      final List<BookModel> bookShelf =
          await CacheManager.loadBookShelfFromCache() ?? [];

      final existingBookIndex = bookShelf.indexWhere((b) => b.title == title);

      if (existingBookIndex != -1) {
        final BookModel existingBook = bookShelf[existingBookIndex].copyWith(
          readingState: readingState,
        );
        await CacheManager.deleteBookFromShelf(title);
        await CacheManager.saveBookToBookShelf(existingBook);
      }
    } catch (e, _) {
      debugPrint("Error 발생: ${e.toString()}");
    }
  }

  // toggleExpanded() {
  //   state = state.copyWith(isExpanded: !state.isExpanded);
  // }

  changeState(String title, ReadingState currentState) async {
    await modifyMyBookReadingState(title, currentState);
  }
}
