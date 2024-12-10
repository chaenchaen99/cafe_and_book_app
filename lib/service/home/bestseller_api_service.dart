import 'package:cafe_and_book/service/home/bestseller_api.dart';
import 'package:cafe_and_book/service/network_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bestseller_api_service.g.dart';

@riverpod
BestsellerApi bestSellerApiService(BestSellerApiServiceRef ref) {
  final dio = ref.watch(dioProvider);
  return BestsellerApi(dio);
}
