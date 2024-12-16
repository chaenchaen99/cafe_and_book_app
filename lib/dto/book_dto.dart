import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';
part 'book_dto.g.dart';

@freezed
class BookListDTO with _$BookListDTO {
  const factory BookListDTO({
    required String lastBuildDate,
    required int total,
    required int start,
    required int display,
    required List<BookDto> items,
  }) = _BookListDTO;

  factory BookListDTO.fromJson(Map<String, dynamic> json) =>
      _$BookListDTOFromJson(json);
}

@freezed
class BookDto with _$BookDto {
  const factory BookDto({
    required String title,
    required String link,
    required String image,
    required String author,
    required String discount,
    required String publisher,
    required String pubdate,
    required String isbn,
    required String description,
  }) = _BookDto;

  factory BookDto.fromJson(Map<String, dynamic> json) =>
      _$BookDtoFromJson(json);
}
