import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_response.freezed.dart';
part 'book_response.g.dart';

@freezed
class BookListResponse with _$BookListResponse {
  const factory BookListResponse({
    required String lastBuildDate,
    required int total,
    required int start,
    required int display,
    required List<BookResponse> items,
  }) = _BookListResponse;

  factory BookListResponse.fromJson(Map<String, dynamic> json) =>
      _$BookListResponseFromJson(json);
}

@freezed
class BookResponse with _$BookResponse {
  const factory BookResponse({
    required String title,
    required String link,
    required String image,
    required String author,
    required String discount,
    required String publisher,
    required String pubdate,
    required String isbn,
    required String description,
  }) = _BookResponse;

  factory BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);
}
