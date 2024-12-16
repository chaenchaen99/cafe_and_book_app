import 'package:cafe_and_book/common/mapper/display_mapper.dart';
import 'package:cafe_and_book/dto/bookcafe_thumbnail_dto.dart';
import 'package:cafe_and_book/model/book_model.dart';
import 'package:cafe_and_book/model/bookcafe_model.dart';
import 'package:cafe_and_book/repository/book/naver_book_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bookcafe_view_model.freezed.dart';
part 'bookcafe_view_model.g.dart';

@freezed
class BookCafeViewModelState with _$BookCafeViewModelState {
  const factory BookCafeViewModelState({
    @Default(AsyncData([])) AsyncValue<List<BookCafeModel>> bookCafeListState,
  }) = _BookCafeViewModelState;
}

@riverpod
class BookCafeViewModel extends _$BookCafeViewModel {
  @override
  BookCafeViewModelState build() {
    return const BookCafeViewModelState();
  }

  fetchAndCombineBookCafeData() async {
    debugPrint("호출 시작");
    final result = await AsyncValue.guard(() async {
      final bookCafeList = await ref
          .read(naverBookApiRepositoryProvider)
          .getBookCafeList('북카페추천');

      final bookCafeModels = await Future.wait(
        bookCafeList.map((bookCafe) async {
          final List<ThumbnailDto> thumbnailData = await ref
              .read(naverBookApiRepositoryProvider)
              .getBookCafeThumbnailList(bookCafe.title);

          return BookCafeModel(
            bookCafeName: bookCafe.title,
            address: bookCafe.address,
            roadAddress: bookCafe.roadAddress,
            mapx: bookCafe.mapx,
            mapy: bookCafe.mapy,
            thumbnails:
                thumbnailData.map((thumbnail) => thumbnail.link).toList(),
          );
        }).toList(),
      );

      return bookCafeModels;
    });

    result.when(
      data: (data) {
        debugPrint(data.toString());
        state = state.copyWith(bookCafeListState: AsyncValue.data(data));
      },
      error: (error, stack) {
        state = state.copyWith(
          bookCafeListState: AsyncValue.error(error, stack),
        );
      },
      loading: () {
        state = state.copyWith(bookCafeListState: const AsyncValue.loading());
      },
    );
  }
}
