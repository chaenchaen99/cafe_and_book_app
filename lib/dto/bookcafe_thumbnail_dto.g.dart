// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookcafe_thumbnail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookCafeThumbnailListDtoImpl _$$BookCafeThumbnailListDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BookCafeThumbnailListDtoImpl(
      lastBuildDate: json['lastBuildDate'] as String,
      total: (json['total'] as num).toInt(),
      start: (json['start'] as num).toInt(),
      display: (json['display'] as num).toInt(),
      thumbnailDto: (json['items'] as List<dynamic>)
          .map((e) => ThumbnailDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookCafeThumbnailListDtoImplToJson(
        _$BookCafeThumbnailListDtoImpl instance) =>
    <String, dynamic>{
      'lastBuildDate': instance.lastBuildDate,
      'total': instance.total,
      'start': instance.start,
      'display': instance.display,
      'items': instance.thumbnailDto,
    };

_$ThumbnailDtoImpl _$$ThumbnailDtoImplFromJson(Map<String, dynamic> json) =>
    _$ThumbnailDtoImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      thumbnail: json['thumbnail'] as String,
      sizeheight: json['sizeheight'] as String,
      sizewidth: json['sizewidth'] as String,
    );

Map<String, dynamic> _$$ThumbnailDtoImplToJson(_$ThumbnailDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'thumbnail': instance.thumbnail,
      'sizeheight': instance.sizeheight,
      'sizewidth': instance.sizewidth,
    };
