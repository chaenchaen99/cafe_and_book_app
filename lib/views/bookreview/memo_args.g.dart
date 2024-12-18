// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoArgsImpl _$$MemoArgsImplFromJson(Map<String, dynamic> json) =>
    _$MemoArgsImpl(
      json['bookTitle'] as String,
      DateTime.parse(json['timeStamp'] as String),
      json['content'] as String,
    );

Map<String, dynamic> _$$MemoArgsImplToJson(_$MemoArgsImpl instance) =>
    <String, dynamic>{
      'bookTitle': instance.bookTitle,
      'timeStamp': instance.timeStamp.toIso8601String(),
      'content': instance.content,
    };
