import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../common/constants/app_urls.dart';
import '../../model/home/bestseller_model.dart';

part 'bestseller_api.g.dart';

@RestApi(baseUrl: AppUrls.bestsellerBaseUrl)
abstract class BestsellerApi {
  factory BestsellerApi(Dio dio) = _BestsellerApi;

  @GET("/v1/search/book.json")
  // @GET("/v1/search/book.json?query=$query&sort=date&display=50")
  Future<BestSellerResponse> getBestSellerList(
    @Query("query") String query,
    @Query("sort") String sort,
    @Query("display") int display,
  );
}
