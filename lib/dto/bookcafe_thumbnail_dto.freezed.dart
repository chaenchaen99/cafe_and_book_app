// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookcafe_thumbnail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookCafeThumbnailListDto _$BookCafeThumbnailListDtoFromJson(
    Map<String, dynamic> json) {
  return _BookCafeThumbnailListDto.fromJson(json);
}

/// @nodoc
mixin _$BookCafeThumbnailListDto {
  String get lastBuildDate => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get display => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ThumbnailDto> get thumbnailDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCafeThumbnailListDtoCopyWith<BookCafeThumbnailListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCafeThumbnailListDtoCopyWith<$Res> {
  factory $BookCafeThumbnailListDtoCopyWith(BookCafeThumbnailListDto value,
          $Res Function(BookCafeThumbnailListDto) then) =
      _$BookCafeThumbnailListDtoCopyWithImpl<$Res, BookCafeThumbnailListDto>;
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      @JsonKey(name: 'items') List<ThumbnailDto> thumbnailDto});
}

/// @nodoc
class _$BookCafeThumbnailListDtoCopyWithImpl<$Res,
        $Val extends BookCafeThumbnailListDto>
    implements $BookCafeThumbnailListDtoCopyWith<$Res> {
  _$BookCafeThumbnailListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastBuildDate = null,
    Object? total = null,
    Object? start = null,
    Object? display = null,
    Object? thumbnailDto = null,
  }) {
    return _then(_value.copyWith(
      lastBuildDate: null == lastBuildDate
          ? _value.lastBuildDate
          : lastBuildDate // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailDto: null == thumbnailDto
          ? _value.thumbnailDto
          : thumbnailDto // ignore: cast_nullable_to_non_nullable
              as List<ThumbnailDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookCafeThumbnailListDtoImplCopyWith<$Res>
    implements $BookCafeThumbnailListDtoCopyWith<$Res> {
  factory _$$BookCafeThumbnailListDtoImplCopyWith(
          _$BookCafeThumbnailListDtoImpl value,
          $Res Function(_$BookCafeThumbnailListDtoImpl) then) =
      __$$BookCafeThumbnailListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      @JsonKey(name: 'items') List<ThumbnailDto> thumbnailDto});
}

/// @nodoc
class __$$BookCafeThumbnailListDtoImplCopyWithImpl<$Res>
    extends _$BookCafeThumbnailListDtoCopyWithImpl<$Res,
        _$BookCafeThumbnailListDtoImpl>
    implements _$$BookCafeThumbnailListDtoImplCopyWith<$Res> {
  __$$BookCafeThumbnailListDtoImplCopyWithImpl(
      _$BookCafeThumbnailListDtoImpl _value,
      $Res Function(_$BookCafeThumbnailListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastBuildDate = null,
    Object? total = null,
    Object? start = null,
    Object? display = null,
    Object? thumbnailDto = null,
  }) {
    return _then(_$BookCafeThumbnailListDtoImpl(
      lastBuildDate: null == lastBuildDate
          ? _value.lastBuildDate
          : lastBuildDate // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailDto: null == thumbnailDto
          ? _value._thumbnailDto
          : thumbnailDto // ignore: cast_nullable_to_non_nullable
              as List<ThumbnailDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookCafeThumbnailListDtoImpl implements _BookCafeThumbnailListDto {
  const _$BookCafeThumbnailListDtoImpl(
      {required this.lastBuildDate,
      required this.total,
      required this.start,
      required this.display,
      @JsonKey(name: 'items') required final List<ThumbnailDto> thumbnailDto})
      : _thumbnailDto = thumbnailDto;

  factory _$BookCafeThumbnailListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookCafeThumbnailListDtoImplFromJson(json);

  @override
  final String lastBuildDate;
  @override
  final int total;
  @override
  final int start;
  @override
  final int display;
  final List<ThumbnailDto> _thumbnailDto;
  @override
  @JsonKey(name: 'items')
  List<ThumbnailDto> get thumbnailDto {
    if (_thumbnailDto is EqualUnmodifiableListView) return _thumbnailDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnailDto);
  }

  @override
  String toString() {
    return 'BookCafeThumbnailListDto(lastBuildDate: $lastBuildDate, total: $total, start: $start, display: $display, thumbnailDto: $thumbnailDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCafeThumbnailListDtoImpl &&
            (identical(other.lastBuildDate, lastBuildDate) ||
                other.lastBuildDate == lastBuildDate) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.display, display) || other.display == display) &&
            const DeepCollectionEquality()
                .equals(other._thumbnailDto, _thumbnailDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastBuildDate, total, start,
      display, const DeepCollectionEquality().hash(_thumbnailDto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCafeThumbnailListDtoImplCopyWith<_$BookCafeThumbnailListDtoImpl>
      get copyWith => __$$BookCafeThumbnailListDtoImplCopyWithImpl<
          _$BookCafeThumbnailListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookCafeThumbnailListDtoImplToJson(
      this,
    );
  }
}

abstract class _BookCafeThumbnailListDto implements BookCafeThumbnailListDto {
  const factory _BookCafeThumbnailListDto(
          {required final String lastBuildDate,
          required final int total,
          required final int start,
          required final int display,
          @JsonKey(name: 'items')
          required final List<ThumbnailDto> thumbnailDto}) =
      _$BookCafeThumbnailListDtoImpl;

  factory _BookCafeThumbnailListDto.fromJson(Map<String, dynamic> json) =
      _$BookCafeThumbnailListDtoImpl.fromJson;

  @override
  String get lastBuildDate;
  @override
  int get total;
  @override
  int get start;
  @override
  int get display;
  @override
  @JsonKey(name: 'items')
  List<ThumbnailDto> get thumbnailDto;
  @override
  @JsonKey(ignore: true)
  _$$BookCafeThumbnailListDtoImplCopyWith<_$BookCafeThumbnailListDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ThumbnailDto _$ThumbnailDtoFromJson(Map<String, dynamic> json) {
  return _ThumbnailDto.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailDto {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get sizeheight => throw _privateConstructorUsedError;
  String get sizewidth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailDtoCopyWith<ThumbnailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailDtoCopyWith<$Res> {
  factory $ThumbnailDtoCopyWith(
          ThumbnailDto value, $Res Function(ThumbnailDto) then) =
      _$ThumbnailDtoCopyWithImpl<$Res, ThumbnailDto>;
  @useResult
  $Res call(
      {String title,
      String link,
      String thumbnail,
      String sizeheight,
      String sizewidth});
}

/// @nodoc
class _$ThumbnailDtoCopyWithImpl<$Res, $Val extends ThumbnailDto>
    implements $ThumbnailDtoCopyWith<$Res> {
  _$ThumbnailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? thumbnail = null,
    Object? sizeheight = null,
    Object? sizewidth = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      sizeheight: null == sizeheight
          ? _value.sizeheight
          : sizeheight // ignore: cast_nullable_to_non_nullable
              as String,
      sizewidth: null == sizewidth
          ? _value.sizewidth
          : sizewidth // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThumbnailDtoImplCopyWith<$Res>
    implements $ThumbnailDtoCopyWith<$Res> {
  factory _$$ThumbnailDtoImplCopyWith(
          _$ThumbnailDtoImpl value, $Res Function(_$ThumbnailDtoImpl) then) =
      __$$ThumbnailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      String thumbnail,
      String sizeheight,
      String sizewidth});
}

/// @nodoc
class __$$ThumbnailDtoImplCopyWithImpl<$Res>
    extends _$ThumbnailDtoCopyWithImpl<$Res, _$ThumbnailDtoImpl>
    implements _$$ThumbnailDtoImplCopyWith<$Res> {
  __$$ThumbnailDtoImplCopyWithImpl(
      _$ThumbnailDtoImpl _value, $Res Function(_$ThumbnailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? thumbnail = null,
    Object? sizeheight = null,
    Object? sizewidth = null,
  }) {
    return _then(_$ThumbnailDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      sizeheight: null == sizeheight
          ? _value.sizeheight
          : sizeheight // ignore: cast_nullable_to_non_nullable
              as String,
      sizewidth: null == sizewidth
          ? _value.sizewidth
          : sizewidth // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailDtoImpl implements _ThumbnailDto {
  const _$ThumbnailDtoImpl(
      {required this.title,
      required this.link,
      required this.thumbnail,
      required this.sizeheight,
      required this.sizewidth});

  factory _$ThumbnailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String thumbnail;
  @override
  final String sizeheight;
  @override
  final String sizewidth;

  @override
  String toString() {
    return 'ThumbnailDto(title: $title, link: $link, thumbnail: $thumbnail, sizeheight: $sizeheight, sizewidth: $sizewidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.sizeheight, sizeheight) ||
                other.sizeheight == sizeheight) &&
            (identical(other.sizewidth, sizewidth) ||
                other.sizewidth == sizewidth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, link, thumbnail, sizeheight, sizewidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailDtoImplCopyWith<_$ThumbnailDtoImpl> get copyWith =>
      __$$ThumbnailDtoImplCopyWithImpl<_$ThumbnailDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailDtoImplToJson(
      this,
    );
  }
}

abstract class _ThumbnailDto implements ThumbnailDto {
  const factory _ThumbnailDto(
      {required final String title,
      required final String link,
      required final String thumbnail,
      required final String sizeheight,
      required final String sizewidth}) = _$ThumbnailDtoImpl;

  factory _ThumbnailDto.fromJson(Map<String, dynamic> json) =
      _$ThumbnailDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get thumbnail;
  @override
  String get sizeheight;
  @override
  String get sizewidth;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailDtoImplCopyWith<_$ThumbnailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
