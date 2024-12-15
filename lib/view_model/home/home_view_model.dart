import 'package:cafe_and_book/common/utils/cache_manager.dart';
import 'package:cafe_and_book/model/book_model.dart';
import 'package:cafe_and_book/model/book_response.dart';
import 'package:cafe_and_book/repository/book/naver_book_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_model.freezed.dart';
part 'home_view_model.g.dart';

enum Category {
  finance("재테크"),
  selfDevelopment("자기계발"),
  tech("AI"),
  humanities("인문학");

  final String type;
  const Category(this.type);
}

@freezed
class HomeViewModelState with _$HomeViewModelState {
  const factory HomeViewModelState({
    @Default({})
    Map<Category, List<BookResponse>> bookList, //카테고리별 베스트셀러 데이터 리스트
    @Default(AsyncValue.loading())
    AsyncValue<Map<Category, List<BookResponse>>> getbookListState, //데이터 처리 상태
  }) = _HomeViewModelState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeViewModelState build() {
    return const HomeViewModelState();
  }

  Future<bool> _isCachedValid() async {
    try {
      final now = DateTime.now();
      final lastFetched = await CacheManager.loadLastFetched();

      return lastFetched != null && now.difference(lastFetched).inDays < 1;
    } catch (e, _) {
      debugPrint("Error loading lastFetched: $e");
      return false;
    }
  }

  Future<void> _loadFromCache() async {
    try {
      final cachedData = await CacheManager.loadBestSellerListFromCache();

      if (cachedData != null) {
        final bookList = cachedData.map((key, value) => MapEntry(
              Category.values.firstWhere((category) => category.type == key),
              List<BookResponse>.from(
                  value.map((books) => BookResponse.fromJson(books))),
            ));
        state = state.copyWith(
          bookList: bookList,
          getbookListState: AsyncValue.data(bookList),
        );
        debugPrint("Cached data loaded successfully");
      } else {
        debugPrint("No cached data available");
        fetchBestSellerList();
      }
    } catch (e, stack) {
      debugPrint("Error loading cached data: $e");
      state = state.copyWith(getbookListState: AsyncValue.error(e, stack));
    }
  }

  Future<void> _saveToCache(Map<Category, dynamic> data) async {
    try {
      final cacheData = data.map((key, value) => MapEntry(
            key.type,
            value.map((bookLists) => bookLists.toJson()).toList(),
          ));

      await CacheManager.saveBestSellerListToCache(cacheData);
      await CacheManager.saveLastFetched(DateTime.now());
    } catch (e, _) {
      debugPrint("Error saving cached data: $e");
    }
  }

  fetchBestSellerList() async {
    state = state.copyWith(getbookListState: const AsyncValue.loading());
    final isCacheValid = await _isCachedValid();
    //1: 캐시 확인
    if (isCacheValid) {
      await _loadFromCache();
      return;
    }

    //2: 데이터 업데이트 후 1일이 지났으면 데이터 호출
    final Map<Category, List<BookResponse>> categoryBooks = {};

    final result = await AsyncValue.guard(() async {
      for (final category in Category.values) {
        final books = await ref
            .watch(naverBookApiRepositoryProvider)
            .getBestSellerList(category.type);
        categoryBooks[category] = books;
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
        _saveToCache(data);
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
