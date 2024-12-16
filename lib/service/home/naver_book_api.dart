import 'package:cafe_and_book/dto/bookcafe_thumbnail_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../common/constants/app_urls.dart';
import '../../dto/book_dto.dart';
import '../../dto/bookcafe_dto.dart';

part 'naver_book_api.g.dart';

@RestApi(baseUrl: AppUrls.bestsellerBaseUrl)
abstract class NaverBookApi {
  factory NaverBookApi(Dio dio) = _NaverBookApi;

  @GET("/v1/search/book.json")
  Future<BookListDTO> getBestSellerList({
    @Query("query") required String query,
    @Query("sort") required String sort,
    @Query("display") required int display,
  });

  @GET("/v1/search/book_adv.json")
  Future<BookListDTO> getBookSearchResult({
    @Query("d_titl") required String query,
    @Query("display") required int display,
  });

  @GET("/v1/search/local.json")
  Future<BookCafeListDto> getBookCafeList({
    @Query("query") required String query,
    @Query("display") required int display,
    @Query("sort") required String sort,
  });

  @GET("/v1/search/image")
  Future<BookCafeThumbnailListDto> getBookCafeThumbnailList({
    @Query("query") required String query,
    @Query("display") required int display,
    @Query("sort") required String sort,
  });
}
