import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/utils/cache_manager.dart';
import '../../model/book_model.dart';
import '../../views/bookreview/widget/reading_state_badge.dart';

part 'bookreview_view_model.g.dart';
part 'bookreview_view_model.freezed.dart';

@freezed
class BookReviewState with _$BookReviewState {
  const factory BookReviewState({
    @Default(false) bool isMemoModifying,
    @Default(AsyncValue.loading()) AsyncValue<BookModel> bookReviewsState,
  }) = _BookReviewState;
}

@riverpod
class BookReviewViewModel extends _$BookReviewViewModel {
  @override
  BookReviewState build() {
    return const BookReviewState();
  }

  Future<void> fetchMemos(String bookTitle) async {
    try {
      final bookReview = await CacheManager.getBookByTitle(bookTitle);
      state = state.copyWith(
        bookReviewsState: AsyncValue.data(bookReview!
            .copyWith(memos: sortedByLatest(List.from(bookReview.memos)))),
      );
    } catch (e, stack) {
      state = state.copyWith(bookReviewsState: AsyncError(e, stack));
    }
  }

  toggleModifyButton() {
    state = state.copyWith(isMemoModifying: !state.isMemoModifying);
  }

  getSortedList(String sortedOption) {
    if (sortedOption == '최신순') {
      state = state.copyWith(
        bookReviewsState: AsyncValue.data(
          state.bookReviewsState.value!.copyWith(
              memos: sortedByLatest(
                  List.from(state.bookReviewsState.value!.memos))),
        ),
      );
    } else {
      state = state.copyWith(
        bookReviewsState: AsyncValue.data(
          state.bookReviewsState.value!.copyWith(
              memos: sortedByOldest(
                  List.from(state.bookReviewsState.value!.memos))),
        ),
      );
    }
  }

  List<Map<DateTime, String>> sortedByLatest(
      List<Map<DateTime, String>> memos) {
    memos.sort((a, b) {
      final aDate = a.keys.first;
      final bDate = b.keys.first;
      return bDate.compareTo(aDate); // 최신순으로 정렬
    });
    return memos;
  }

// 오래된 순 (오름차순) 정렬
  List<Map<DateTime, String>> sortedByOldest(
      List<Map<DateTime, String>> memos) {
    memos.sort((a, b) {
      final aDate = a.keys.first;
      final bDate = b.keys.first;
      return aDate.compareTo(bDate); // 오래된 순으로 정렬
    });
    return memos;
  }

  //읽기 상태 뱃지 상태 변경 및 저장
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

  addMemo(String bookTitle, String content) async {
    try {
      final bookReview =
          await CacheManager.addMemoToBook(bookTitle: bookTitle, memo: content);
      state = state.copyWith(
        bookReviewsState: AsyncValue.data(bookReview!.copyWith(
          memos: sortedByLatest(List.from(bookReview.memos)),
        )),
      );
    } catch (e, stack) {
      state = state.copyWith(bookReviewsState: AsyncError(e, stack));
    }
  }

  deleteMemo(String bookTitle, DateTime timeStamp) async {
    try {
      final result = await CacheManager.deleteMemoFromBook(
        bookTitle,
        timeStamp,
      );
      state = state.copyWith(
        bookReviewsState: AsyncValue.data(result!.copyWith(
          memos: sortedByLatest(List.from(result.memos)),
        )),
      );
    } catch (e, _) {
      state = state.copyWith(
        bookReviewsState: AsyncValue.error(e, _),
      );
    }
  }

  modifyMemo(String bookTitle, DateTime timeStamp, String newMemo) async {
    try {
      final result = await CacheManager.modifyMemoInBook(
        bookTitle,
        timeStamp,
        newMemo,
      );
      state = state.copyWith(
        bookReviewsState: AsyncValue.data(result!.copyWith(
          memos: sortedByLatest(List.from(result.memos)),
        )),
      );
    } catch (e, _) {
      state = state.copyWith(
        bookReviewsState: AsyncValue.error(e, _),
      );
    }
  }
}
