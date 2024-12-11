import 'package:cafe_and_book/service/home/bestseller_api.dart';
import 'package:cafe_and_book/service/home/bestseller_api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/home/bestseller_model.dart';

part 'bestseller_repository.g.dart';

class BestsellerRepository {
  BestsellerApi homeApiService;

  BestsellerRepository(this.homeApiService);

  Future<List<Book>> getBestSellerList(String query) async {
    final result = await homeApiService.getBestSellerList(
      query,
      "date",
      50,
    );
    return result.items;
  }
}

@riverpod
BestsellerRepository bestsellerRepository(BestsellerRepositoryRef ref) {
  final service = ref.watch(bestSellerApiServiceProvider);
  return BestsellerRepository(service);
}
