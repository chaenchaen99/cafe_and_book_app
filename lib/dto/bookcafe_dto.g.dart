// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookcafe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookCafeListDtoImpl _$$BookCafeListDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BookCafeListDtoImpl(
      lastBuildDate: json['lastBuildDate'] as String,
      total: (json['total'] as num).toInt(),
      start: (json['start'] as num).toInt(),
      display: (json['display'] as num).toInt(),
      bookCafeDtos: (json['items'] as List<dynamic>)
          .map((e) => BookCafeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookCafeListDtoImplToJson(
        _$BookCafeListDtoImpl instance) =>
    <String, dynamic>{
      'lastBuildDate': instance.lastBuildDate,
      'total': instance.total,
      'start': instance.start,
      'display': instance.display,
      'items': instance.bookCafeDtos,
    };

_$BookCafeDtoImpl _$$BookCafeDtoImplFromJson(Map<String, dynamic> json) =>
    _$BookCafeDtoImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      telephone: json['telephone'] as String,
      address: json['address'] as String,
      roadAddress: json['roadAddress'] as String,
      mapx: json['mapx'] as String,
      mapy: json['mapy'] as String,
    );

Map<String, dynamic> _$$BookCafeDtoImplToJson(_$BookCafeDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'category': instance.category,
      'description': instance.description,
      'telephone': instance.telephone,
      'address': instance.address,
      'roadAddress': instance.roadAddress,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
    };
