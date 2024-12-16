import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookcafe_dto.freezed.dart';
part 'bookcafe_dto.g.dart';

@freezed
class BookCafeListDto with _$BookCafeListDto {
  const factory BookCafeListDto({
    required String lastBuildDate,
    required int total,
    required int start,
    required int display,
    @JsonKey(name: 'items') required List<BookCafeDto> bookCafeDtos,
  }) = _BookCafeListDto;

  factory BookCafeListDto.fromJson(Map<String, dynamic> json) =>
      _$BookCafeListDtoFromJson(json);
}

@freezed
class BookCafeDto with _$BookCafeDto {
  const factory BookCafeDto({
    required String title,
    required String link,
    required String category,
    required String description,
    required String telephone,
    required String address,
    required String roadAddress,
    required String mapx,
    required String mapy,
  }) = _BookCafeDto;

  factory BookCafeDto.fromJson(Map<String, dynamic> json) =>
      _$BookCafeDtoFromJson(json);
}
