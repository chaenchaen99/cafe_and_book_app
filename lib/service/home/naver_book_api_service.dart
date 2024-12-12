import 'package:cafe_and_book/service/home/naver_book_api.dart';
import 'package:cafe_and_book/service/network_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'naver_book_api_service.g.dart';

@riverpod
NaverBookApi naverBookApiService(NaverBookApiServiceRef ref) {
  final dio = ref.watch(dioProvider);
  return NaverBookApi(dio);
}
