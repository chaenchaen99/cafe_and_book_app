// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookListResponseImpl _$$BookListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookListResponseImpl(
      lastBuildDate: json['lastBuildDate'] as String,
      total: (json['total'] as num).toInt(),
      start: (json['start'] as num).toInt(),
      display: (json['display'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => BookResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookListResponseImplToJson(
        _$BookListResponseImpl instance) =>
    <String, dynamic>{
      'lastBuildDate': instance.lastBuildDate,
      'total': instance.total,
      'start': instance.start,
      'display': instance.display,
      'items': instance.items,
    };

_$BookResponseImpl _$$BookResponseImplFromJson(Map<String, dynamic> json) =>
    _$BookResponseImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      image: json['image'] as String,
      author: json['author'] as String,
      discount: json['discount'] as String,
      publisher: json['publisher'] as String,
      pubdate: json['pubdate'] as String,
      isbn: json['isbn'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$BookResponseImplToJson(_$BookResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'image': instance.image,
      'author': instance.author,
      'discount': instance.discount,
      'publisher': instance.publisher,
      'pubdate': instance.pubdate,
      'isbn': instance.isbn,
      'description': instance.description,
    };
