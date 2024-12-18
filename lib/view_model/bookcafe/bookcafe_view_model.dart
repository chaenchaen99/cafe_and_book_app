import 'package:cafe_and_book/dto/bookcafe_thumbnail_dto.dart';
import 'package:cafe_and_book/model/bookcafe_model.dart';
import 'package:cafe_and_book/repository/book/naver_book_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bookcafe_view_model.freezed.dart';
part 'bookcafe_view_model.g.dart';

@freezed
class BookCafeViewModelState with _$BookCafeViewModelState {
  const factory BookCafeViewModelState({
    @Default(AsyncData([])) AsyncValue<List<BookCafeModel?>> bookCafeListState,
  }) = _BookCafeViewModelState;
}

@riverpod
class BookCafeViewModel extends _$BookCafeViewModel {
  @override
  BookCafeViewModelState build() {
    return const BookCafeViewModelState();
  }

  fetchAndCombineBookCafeData() async {
    final result = await AsyncValue.guard(() async {
      final bookCafeList = await ref
          .read(naverBookApiRepositoryProvider)
          .getBookCafeList('북카페추천');

      final bookCafeModels = await Future.wait(
        bookCafeList.map((bookCafe) async {
          try {
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
          } catch (e) {
            // 오류 발생 시 null 반환
            return null;
          }
        }).toList(),
      );

// 오류가 있는 경우 null을 제외하고 필터링
      final validResults =
          bookCafeModels.where((model) => model != null).toList();
      return validResults;
    });

    result.when(
      data: (data) {
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
