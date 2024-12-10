import 'package:cafe_and_book/model/home/bestseller_model.dart';
import 'package:cafe_and_book/repository/book/bestseller_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_model.freezed.dart';
part 'home_view_model.g.dart';

@freezed
class HomeViewModelState with _$HomeViewModelState {
  const factory HomeViewModelState({
    @Default({}) Map<String, List<Book>> bookList,
    @Default(AsyncValue.loading())
    AsyncValue<Map<String, List<Book>>> getbookListState,
  }) = _HomeViewModelState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeViewModelState build() {
    return const HomeViewModelState();
  }

  fetchBestSellerList() async {
    state = state.copyWith(getbookListState: const AsyncValue.loading());

    // 카테고리 목록 정의
    final categories = ["재테크", "자기계발", "테크분야", "인문학"];
    final Map<String, List<Book>> categoryBooks = {};

    // API 호출 및 에러 처리
    final result = await AsyncValue.guard(() async {
      for (final category in categories) {
        final books = await ref
            .watch(bestsellerRepositoryProvider)
            .getBestSellerList(category); // API 호출
        categoryBooks[category] = books; // 결과 저장
      }
      return categoryBooks;
    });

    // 상태 업데이트
    result.when(
      data: (data) {
        state = state.copyWith(
          bookList: data,
          getbookListState: AsyncValue.data(data),
        );
      },
      error: (error, stack) {
        state = state.copyWith(
          getbookListState: AsyncValue.error(error, stack),
        );
      },
      loading: () {
        state = state.copyWith(getbookListState: const AsyncValue.loading());
      },
    );
  }
}
