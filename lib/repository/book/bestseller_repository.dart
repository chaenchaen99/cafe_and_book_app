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

@riverpod //@riverpod 어노테이션은 이 함수를 Riverpod 프로바이더로 등록
BestsellerRepository bestsellerRepository(BestsellerRepositoryRef ref) {
  //service를 homerepository에서 주입할 수 있다.
  final service = ref.watch(bestSellerApiServiceProvider);
  return BestsellerRepository(service);
}
