import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../common/constants/app_urls.dart';
import '../../model/book_response.dart';

part 'naver_book_api.g.dart';

@RestApi(baseUrl: AppUrls.bestsellerBaseUrl)
abstract class NaverBookApi {
  factory NaverBookApi(Dio dio) = _NaverBookApi;

  @GET("/v1/search/book.json")
  Future<BookResponse> getBestSellerList(
    @Query("query") String query,
    @Query("sort") String sort,
    @Query("display") int display,
  );

  @GET("/v1/search/book_adv.json")
  Future<BookResponse> getBookSearchResult(
    @Query("d_titl") String query,
    @Query("display") int display,
  );
}
