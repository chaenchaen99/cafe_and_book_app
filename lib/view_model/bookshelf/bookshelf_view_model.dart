import 'package:cafe_and_book/common/constants/app_enums.dart';
import 'package:cafe_and_book/common/utils/cache_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/book_model.dart';

part 'bookshelf_view_model.freezed.dart';
part 'bookshelf_view_model.g.dart';

@freezed
class BookshelfViewModelState with _$BookshelfViewModelState {
  const factory BookshelfViewModelState({
    @Default(AsyncValue.data([])) AsyncValue<List<BookModel>> mybooksState,
  }) = _BookshelfViewModelState;
}

@riverpod
class BookshelfViewModel extends _$BookshelfViewModel {
  @override
  BookshelfViewModelState build() {
    return const BookshelfViewModelState();
  }

  fetchMyBooksFromLocalDB() async {
    final result = await AsyncValue.guard(() async {
      return await CacheManager.loadBookShelfFromCache();
    });
    result.when(
      data: (data) {
        state = state.copyWith(
          mybooksState: AsyncValue.data(sortedByLatest(data!) ?? []),
        );
      },
      error: (error, stack) {
        state = state.copyWith(
          mybooksState: AsyncValue.error(error, stack),
        );
      },
      loading: () {
        state = state.copyWith(mybooksState: const AsyncValue.loading());
      },
    );
  }

  deleteMyBookFromBookShelf(String bookTitle) async {
    try {
      await CacheManager.deleteBookFromShelf(bookTitle);
    } catch (e, _) {
      state = state.copyWith(
        mybooksState: AsyncValue.error(e, _),
      );
    }
  }

  getSortedList(SortOptions sortedOption) {
    final currentBooks = state.mybooksState.value ?? [];
    List<BookModel> sortedBooks;

    if (sortedOption == SortOptions.latest) {
      sortedBooks = sortedByLatest(List.from(currentBooks))!;
    } else {
      sortedBooks = sortedByOldest(List.from(currentBooks))!;
    }
    state = state.copyWith(
      mybooksState: AsyncValue.data(sortedBooks), // 정렬된 데이터로 상태 갱신
    );
  }

  //최신 순 정렬
  List<BookModel>? sortedByLatest(List<BookModel> books) {
    books.sort((a, b) {
      final aDate = a.addDateTime ?? DateTime(0);
      final bDate = b.addDateTime ?? DateTime(0);
      return bDate.compareTo(aDate); // 최신순으로 정렬
    });
    return books;
  }

// 오래된 순
  List<BookModel>? sortedByOldest(List<BookModel> books) {
    books.sort((a, b) {
      final aDate = a.addDateTime ?? DateTime(0);
      final bDate = b.addDateTime ?? DateTime(0);
      return aDate.compareTo(bDate); // 오래된 순으로 정렬
    });
    return books;
  }
}
