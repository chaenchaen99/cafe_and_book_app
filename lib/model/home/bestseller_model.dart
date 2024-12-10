import 'package:freezed_annotation/freezed_annotation.dart';

part 'bestseller_model.freezed.dart';
part 'bestseller_model.g.dart';

@freezed
class BestSellerResponse with _$BestSellerResponse {
  const factory BestSellerResponse({
    required String lastBuildDate,
    required int total,
    required int start,
    required int display,
    required List<Book> items,
  }) = _BestSellerResponse;

  factory BestSellerResponse.fromJson(Map<String, dynamic> json) =>
      _$BestSellerResponseFromJson(json);
}

@freezed
class Book with _$Book {
  const factory Book({
    required String title,
    required String link,
    required String image,
    required String author,
    required String discount,
    required String publisher,
    required String pubdate,
    required String isbn,
    required String description,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
