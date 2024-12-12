import 'package:cafe_and_book/common/utils/cache_manager.dart';
import 'package:cafe_and_book/model/book_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_view_model.freezed.dart';
part 'detail_view_model.g.dart';

@freezed
class DetailViewModelState with _$DetailViewModelState {
  const factory DetailViewModelState({
    @Default(false) bool isAlreadySaved,
    @Default(AsyncValue.data([])) AsyncValue<List<Book>> bookshelfState,
  }) = _DetailViewModelState;
}

@riverpod
class DetailViewModel extends _$DetailViewModel {
  @override
  DetailViewModelState build() {
    return const DetailViewModelState();
  }

  saveBookToBookShelf(Book book) async {
    final List<Book> bookShelf =
        await CacheManager.loadBookShelfFromCache() ?? [];

    final existingBookIndex =
        bookShelf.indexWhere((b) => b.title == book.title);
    if (existingBookIndex != -1) {
      //이미 저장되어있는 책임을 알림
      state = state.copyWith(isAlreadySaved: true);
    } else {
      //새롭게 저장된 책임을 알림
      state = state.copyWith(isAlreadySaved: false);
      await CacheManager.saveBookToBookShelf(book);
    }
  }
}
