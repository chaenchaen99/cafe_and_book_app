// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      image: json['image'] as String,
      author: json['author'] as String,
      discount: json['discount'] as String,
      publisher: json['publisher'] as String,
      pubdate: json['pubdate'] as String,
      isbn: json['isbn'] as String,
      description: json['description'] as String,
      memos: (json['memos'] as List<dynamic>?)
              ?.map((e) => (e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(DateTime.parse(k), e as String),
                  ))
              .toList() ??
          const [],
      readingState:
          $enumDecodeNullable(_$ReadingStateEnumMap, json['readingState']) ??
              ReadingState.initial,
      addDateTime: json['addDateTime'] == null
          ? null
          : DateTime.parse(json['addDateTime'] as String),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
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
      'memos': instance.memos
          .map((e) => e.map((k, e) => MapEntry(k.toIso8601String(), e)))
          .toList(),
      'readingState': _$ReadingStateEnumMap[instance.readingState]!,
      'addDateTime': instance.addDateTime?.toIso8601String(),
    };

const _$ReadingStateEnumMap = {
  ReadingState.initial: 'initial',
  ReadingState.reading: 'reading',
  ReadingState.done: 'done',
};
