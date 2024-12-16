// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookcafe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookCafeModelImpl _$$BookCafeModelImplFromJson(Map<String, dynamic> json) =>
    _$BookCafeModelImpl(
      bookCafeName: json['bookCafeName'] as String? ?? "",
      thumbnails: (json['thumbnails'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      address: json['address'] as String? ?? "",
      roadAddress: json['roadAddress'] as String? ?? "",
      mapx: json['mapx'] as String? ?? "",
      mapy: json['mapy'] as String? ?? "",
    );

Map<String, dynamic> _$$BookCafeModelImplToJson(_$BookCafeModelImpl instance) =>
    <String, dynamic>{
      'bookCafeName': instance.bookCafeName,
      'thumbnails': instance.thumbnails,
      'address': instance.address,
      'roadAddress': instance.roadAddress,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
    };
