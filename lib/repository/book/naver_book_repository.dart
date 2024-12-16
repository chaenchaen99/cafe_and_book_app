import 'package:cafe_and_book/dto/bookcafe_dto.dart';
import 'package:cafe_and_book/dto/bookcafe_thumbnail_dto.dart';
import 'package:cafe_and_book/service/home/naver_book_api.dart';
import 'package:cafe_and_book/service/home/naver_book_api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../dto/book_dto.dart';

part 'naver_book_repository.g.dart';

class NaverBookApiRepository {
  NaverBookApi naverBookApiService;

  NaverBookApiRepository(this.naverBookApiService);

  Future<List<BookDto>> getBestSellerList(String query) async {
    final result = await naverBookApiService.getBestSellerList(
      query: query,
      sort: 'date',
      display: 50,
    );
    return result.items;
  }

  Future<List<BookDto>> getBookRearchResult(String query) async {
    final result = await naverBookApiService.getBookSearchResult(
      query: query,
      display: 50,
    );
    return result.items;
  }

  Future<List<BookCafeDto>> getBookCafeList(String query) async {
    final result = await naverBookApiService.getBookCafeList(
      query: query,
      display: 5,
      sort: 'comment',
    );
    return result.bookCafeDtos;
  }

  Future<List<ThumbnailDto>> getBookCafeThumbnailList(String query) async {
    final result = await naverBookApiService.getBookCafeThumbnailList(
      query: query,
      display: 10,
      sort: 'sim',
    );
    return result.thumbnailDto;
  }
}

@riverpod
NaverBookApiRepository naverBookApiRepository(NaverBookApiRepositoryRef ref) {
  final service = ref.watch(naverBookApiServiceProvider);
  return NaverBookApiRepository(service);
}
