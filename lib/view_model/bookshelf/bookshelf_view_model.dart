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
          mybooksState: AsyncValue.data(data ?? []),
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
}
