import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookcafe_thumbnail_dto.freezed.dart';
part 'bookcafe_thumbnail_dto.g.dart';

@freezed
class BookCafeThumbnailListDto with _$BookCafeThumbnailListDto {
  const factory BookCafeThumbnailListDto({
    required String lastBuildDate,
    required int total,
    required int start,
    required int display,
    @JsonKey(name: 'items') required List<ThumbnailDto> thumbnailDto,
  }) = _BookCafeThumbnailListDto;

  factory BookCafeThumbnailListDto.fromJson(Map<String, dynamic> json) =>
      _$BookCafeThumbnailListDtoFromJson(json);
}

@freezed
class ThumbnailDto with _$ThumbnailDto {
  const factory ThumbnailDto({
    required String title,
    required String link,
    required String thumbnail,
    required String sizeheight,
    required String sizewidth,
  }) = _ThumbnailDto;

  factory ThumbnailDto.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailDtoFromJson(json);
}
