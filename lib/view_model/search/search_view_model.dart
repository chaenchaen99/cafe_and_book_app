import 'package:cafe_and_book/model/book_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/book/naver_book_repository.dart';

part 'search_view_model.freezed.dart';
part 'search_view_model.g.dart';

@freezed
class SearchViewModelState with _$SearchViewModelState {
  const factory SearchViewModelState({
    @Default([]) List<BookResponse> searchResult,
    @Default(AsyncValue.data([])) AsyncValue<List<BookResponse>> searchState,
  }) = _SearchViewModelState;
}

@riverpod
class SearchViewModel extends _$SearchViewModel {
  @override
  SearchViewModelState build() {
    return const SearchViewModelState();
  }

  fetchSearchResult(String keyword) async {
    state = state.copyWith(searchState: const AsyncValue.loading());

    final result = await AsyncValue.guard(() async {
      return await ref
          .watch(naverBookApiRepositoryProvider)
          .getBookRearchResult(keyword);
    });

    result.when(data: (data) {
      state = state.copyWith(
          searchResult: data, searchState: AsyncValue.data(data));
    }, error: (error, stack) {
      state = state.copyWith(
        searchState: AsyncValue.error(error, stack),
      );
    }, loading: () {
      state = state.copyWith(searchState: const AsyncValue.loading());
    });
  }
}
