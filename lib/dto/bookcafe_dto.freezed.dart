// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookcafe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookCafeListDto _$BookCafeListDtoFromJson(Map<String, dynamic> json) {
  return _BookCafeListDto.fromJson(json);
}

/// @nodoc
mixin _$BookCafeListDto {
  String get lastBuildDate => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get display => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<BookCafeDto> get bookCafeDtos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCafeListDtoCopyWith<BookCafeListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCafeListDtoCopyWith<$Res> {
  factory $BookCafeListDtoCopyWith(
          BookCafeListDto value, $Res Function(BookCafeListDto) then) =
      _$BookCafeListDtoCopyWithImpl<$Res, BookCafeListDto>;
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      @JsonKey(name: 'items') List<BookCafeDto> bookCafeDtos});
}

/// @nodoc
class _$BookCafeListDtoCopyWithImpl<$Res, $Val extends BookCafeListDto>
    implements $BookCafeListDtoCopyWith<$Res> {
  _$BookCafeListDtoCopyWithImpl(this._value, this._then);

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
    Object? bookCafeDtos = null,
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
      bookCafeDtos: null == bookCafeDtos
          ? _value.bookCafeDtos
          : bookCafeDtos // ignore: cast_nullable_to_non_nullable
              as List<BookCafeDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookCafeListDtoImplCopyWith<$Res>
    implements $BookCafeListDtoCopyWith<$Res> {
  factory _$$BookCafeListDtoImplCopyWith(_$BookCafeListDtoImpl value,
          $Res Function(_$BookCafeListDtoImpl) then) =
      __$$BookCafeListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      @JsonKey(name: 'items') List<BookCafeDto> bookCafeDtos});
}

/// @nodoc
class __$$BookCafeListDtoImplCopyWithImpl<$Res>
    extends _$BookCafeListDtoCopyWithImpl<$Res, _$BookCafeListDtoImpl>
    implements _$$BookCafeListDtoImplCopyWith<$Res> {
  __$$BookCafeListDtoImplCopyWithImpl(
      _$BookCafeListDtoImpl _value, $Res Function(_$BookCafeListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastBuildDate = null,
    Object? total = null,
    Object? start = null,
    Object? display = null,
    Object? bookCafeDtos = null,
  }) {
    return _then(_$BookCafeListDtoImpl(
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
      bookCafeDtos: null == bookCafeDtos
          ? _value._bookCafeDtos
          : bookCafeDtos // ignore: cast_nullable_to_non_nullable
              as List<BookCafeDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookCafeListDtoImpl implements _BookCafeListDto {
  const _$BookCafeListDtoImpl(
      {required this.lastBuildDate,
      required this.total,
      required this.start,
      required this.display,
      @JsonKey(name: 'items') required final List<BookCafeDto> bookCafeDtos})
      : _bookCafeDtos = bookCafeDtos;

  factory _$BookCafeListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookCafeListDtoImplFromJson(json);

  @override
  final String lastBuildDate;
  @override
  final int total;
  @override
  final int start;
  @override
  final int display;
  final List<BookCafeDto> _bookCafeDtos;
  @override
  @JsonKey(name: 'items')
  List<BookCafeDto> get bookCafeDtos {
    if (_bookCafeDtos is EqualUnmodifiableListView) return _bookCafeDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookCafeDtos);
  }

  @override
  String toString() {
    return 'BookCafeListDto(lastBuildDate: $lastBuildDate, total: $total, start: $start, display: $display, bookCafeDtos: $bookCafeDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCafeListDtoImpl &&
            (identical(other.lastBuildDate, lastBuildDate) ||
                other.lastBuildDate == lastBuildDate) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.display, display) || other.display == display) &&
            const DeepCollectionEquality()
                .equals(other._bookCafeDtos, _bookCafeDtos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastBuildDate, total, start,
      display, const DeepCollectionEquality().hash(_bookCafeDtos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCafeListDtoImplCopyWith<_$BookCafeListDtoImpl> get copyWith =>
      __$$BookCafeListDtoImplCopyWithImpl<_$BookCafeListDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookCafeListDtoImplToJson(
      this,
    );
  }
}

abstract class _BookCafeListDto implements BookCafeListDto {
  const factory _BookCafeListDto(
      {required final String lastBuildDate,
      required final int total,
      required final int start,
      required final int display,
      @JsonKey(name: 'items')
      required final List<BookCafeDto> bookCafeDtos}) = _$BookCafeListDtoImpl;

  factory _BookCafeListDto.fromJson(Map<String, dynamic> json) =
      _$BookCafeListDtoImpl.fromJson;

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
  List<BookCafeDto> get bookCafeDtos;
  @override
  @JsonKey(ignore: true)
  _$$BookCafeListDtoImplCopyWith<_$BookCafeListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookCafeDto _$BookCafeDtoFromJson(Map<String, dynamic> json) {
  return _BookCafeDto.fromJson(json);
}

/// @nodoc
mixin _$BookCafeDto {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get roadAddress => throw _privateConstructorUsedError;
  String get mapx => throw _privateConstructorUsedError;
  String get mapy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCafeDtoCopyWith<BookCafeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCafeDtoCopyWith<$Res> {
  factory $BookCafeDtoCopyWith(
          BookCafeDto value, $Res Function(BookCafeDto) then) =
      _$BookCafeDtoCopyWithImpl<$Res, BookCafeDto>;
  @useResult
  $Res call(
      {String title,
      String link,
      String category,
      String description,
      String telephone,
      String address,
      String roadAddress,
      String mapx,
      String mapy});
}

/// @nodoc
class _$BookCafeDtoCopyWithImpl<$Res, $Val extends BookCafeDto>
    implements $BookCafeDtoCopyWith<$Res> {
  _$BookCafeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? category = null,
    Object? description = null,
    Object? telephone = null,
    Object? address = null,
    Object? roadAddress = null,
    Object? mapx = null,
    Object? mapy = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookCafeDtoImplCopyWith<$Res>
    implements $BookCafeDtoCopyWith<$Res> {
  factory _$$BookCafeDtoImplCopyWith(
          _$BookCafeDtoImpl value, $Res Function(_$BookCafeDtoImpl) then) =
      __$$BookCafeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      String category,
      String description,
      String telephone,
      String address,
      String roadAddress,
      String mapx,
      String mapy});
}

/// @nodoc
class __$$BookCafeDtoImplCopyWithImpl<$Res>
    extends _$BookCafeDtoCopyWithImpl<$Res, _$BookCafeDtoImpl>
    implements _$$BookCafeDtoImplCopyWith<$Res> {
  __$$BookCafeDtoImplCopyWithImpl(
      _$BookCafeDtoImpl _value, $Res Function(_$BookCafeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? category = null,
    Object? description = null,
    Object? telephone = null,
    Object? address = null,
    Object? roadAddress = null,
    Object? mapx = null,
    Object? mapy = null,
  }) {
    return _then(_$BookCafeDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookCafeDtoImpl implements _BookCafeDto {
  const _$BookCafeDtoImpl(
      {required this.title,
      required this.link,
      required this.category,
      required this.description,
      required this.telephone,
      required this.address,
      required this.roadAddress,
      required this.mapx,
      required this.mapy});

  factory _$BookCafeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookCafeDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String category;
  @override
  final String description;
  @override
  final String telephone;
  @override
  final String address;
  @override
  final String roadAddress;
  @override
  final String mapx;
  @override
  final String mapy;

  @override
  String toString() {
    return 'BookCafeDto(title: $title, link: $link, category: $category, description: $description, telephone: $telephone, address: $address, roadAddress: $roadAddress, mapx: $mapx, mapy: $mapy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCafeDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, category,
      description, telephone, address, roadAddress, mapx, mapy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCafeDtoImplCopyWith<_$BookCafeDtoImpl> get copyWith =>
      __$$BookCafeDtoImplCopyWithImpl<_$BookCafeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookCafeDtoImplToJson(
      this,
    );
  }
}

abstract class _BookCafeDto implements BookCafeDto {
  const factory _BookCafeDto(
      {required final String title,
      required final String link,
      required final String category,
      required final String description,
      required final String telephone,
      required final String address,
      required final String roadAddress,
      required final String mapx,
      required final String mapy}) = _$BookCafeDtoImpl;

  factory _BookCafeDto.fromJson(Map<String, dynamic> json) =
      _$BookCafeDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get category;
  @override
  String get description;
  @override
  String get telephone;
  @override
  String get address;
  @override
  String get roadAddress;
  @override
  String get mapx;
  @override
  String get mapy;
  @override
  @JsonKey(ignore: true)
  _$$BookCafeDtoImplCopyWith<_$BookCafeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
