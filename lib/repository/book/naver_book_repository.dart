import 'package:cafe_and_book/service/home/naver_book_api.dart';
import 'package:cafe_and_book/service/home/naver_book_api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/book_response.dart';

part 'naver_book_repository.g.dart';

class NaverBookApiRepository {
  NaverBookApi naverBookApiService;

  NaverBookApiRepository(this.naverBookApiService);

  Future<List<Book>> getBestSellerList(String query) async {
    final result = await naverBookApiService.getBestSellerList(
      query,
      "date",
      50,
    );
    return result.items;
  }

  Future<List<Book>> getBookRearchResult(String query) async {
    final result = await naverBookApiService.getBookSearchResult(query, 100);
    return result.items;
  }
}

@riverpod
NaverBookApiRepository naverBookApiRepository(NaverBookApiRepositoryRef ref) {
  final service = ref.watch(naverBookApiServiceProvider);
  return NaverBookApiRepository(service);
}
