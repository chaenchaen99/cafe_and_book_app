// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoArgs _$MemoArgsFromJson(Map<String, dynamic> json) {
  return _MemoArgs.fromJson(json);
}

/// @nodoc
mixin _$MemoArgs {
  String get bookTitle => throw _privateConstructorUsedError;
  DateTime get timeStamp => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoArgsCopyWith<MemoArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoArgsCopyWith<$Res> {
  factory $MemoArgsCopyWith(MemoArgs value, $Res Function(MemoArgs) then) =
      _$MemoArgsCopyWithImpl<$Res, MemoArgs>;
  @useResult
  $Res call({String bookTitle, DateTime timeStamp, String content});
}

/// @nodoc
class _$MemoArgsCopyWithImpl<$Res, $Val extends MemoArgs>
    implements $MemoArgsCopyWith<$Res> {
  _$MemoArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookTitle = null,
    Object? timeStamp = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      bookTitle: null == bookTitle
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoArgsImplCopyWith<$Res>
    implements $MemoArgsCopyWith<$Res> {
  factory _$$MemoArgsImplCopyWith(
          _$MemoArgsImpl value, $Res Function(_$MemoArgsImpl) then) =
      __$$MemoArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bookTitle, DateTime timeStamp, String content});
}

/// @nodoc
class __$$MemoArgsImplCopyWithImpl<$Res>
    extends _$MemoArgsCopyWithImpl<$Res, _$MemoArgsImpl>
    implements _$$MemoArgsImplCopyWith<$Res> {
  __$$MemoArgsImplCopyWithImpl(
      _$MemoArgsImpl _value, $Res Function(_$MemoArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookTitle = null,
    Object? timeStamp = null,
    Object? content = null,
  }) {
    return _then(_$MemoArgsImpl(
      null == bookTitle
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoArgsImpl implements _MemoArgs {
  const _$MemoArgsImpl(this.bookTitle, this.timeStamp, this.content);

  factory _$MemoArgsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoArgsImplFromJson(json);

  @override
  final String bookTitle;
  @override
  final DateTime timeStamp;
  @override
  final String content;

  @override
  String toString() {
    return 'MemoArgs(bookTitle: $bookTitle, timeStamp: $timeStamp, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoArgsImpl &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bookTitle, timeStamp, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoArgsImplCopyWith<_$MemoArgsImpl> get copyWith =>
      __$$MemoArgsImplCopyWithImpl<_$MemoArgsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoArgsImplToJson(
      this,
    );
  }
}

abstract class _MemoArgs implements MemoArgs {
  const factory _MemoArgs(final String bookTitle, final DateTime timeStamp,
      final String content) = _$MemoArgsImpl;

  factory _MemoArgs.fromJson(Map<String, dynamic> json) =
      _$MemoArgsImpl.fromJson;

  @override
  String get bookTitle;
  @override
  DateTime get timeStamp;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$MemoArgsImplCopyWith<_$MemoArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
