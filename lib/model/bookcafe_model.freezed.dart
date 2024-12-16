// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookcafe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookCafeModel _$BookCafeModelFromJson(Map<String, dynamic> json) {
  return _BookCafeModel.fromJson(json);
}

/// @nodoc
mixin _$BookCafeModel {
  String get bookCafeName => throw _privateConstructorUsedError;
  List<String> get thumbnails => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get roadAddress => throw _privateConstructorUsedError;
  String get mapx => throw _privateConstructorUsedError;
  String get mapy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCafeModelCopyWith<BookCafeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCafeModelCopyWith<$Res> {
  factory $BookCafeModelCopyWith(
          BookCafeModel value, $Res Function(BookCafeModel) then) =
      _$BookCafeModelCopyWithImpl<$Res, BookCafeModel>;
  @useResult
  $Res call(
      {String bookCafeName,
      List<String> thumbnails,
      String address,
      String roadAddress,
      String mapx,
      String mapy});
}

/// @nodoc
class _$BookCafeModelCopyWithImpl<$Res, $Val extends BookCafeModel>
    implements $BookCafeModelCopyWith<$Res> {
  _$BookCafeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookCafeName = null,
    Object? thumbnails = null,
    Object? address = null,
    Object? roadAddress = null,
    Object? mapx = null,
    Object? mapy = null,
  }) {
    return _then(_value.copyWith(
      bookCafeName: null == bookCafeName
          ? _value.bookCafeName
          : bookCafeName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$BookCafeModelImplCopyWith<$Res>
    implements $BookCafeModelCopyWith<$Res> {
  factory _$$BookCafeModelImplCopyWith(
          _$BookCafeModelImpl value, $Res Function(_$BookCafeModelImpl) then) =
      __$$BookCafeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookCafeName,
      List<String> thumbnails,
      String address,
      String roadAddress,
      String mapx,
      String mapy});
}

/// @nodoc
class __$$BookCafeModelImplCopyWithImpl<$Res>
    extends _$BookCafeModelCopyWithImpl<$Res, _$BookCafeModelImpl>
    implements _$$BookCafeModelImplCopyWith<$Res> {
  __$$BookCafeModelImplCopyWithImpl(
      _$BookCafeModelImpl _value, $Res Function(_$BookCafeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookCafeName = null,
    Object? thumbnails = null,
    Object? address = null,
    Object? roadAddress = null,
    Object? mapx = null,
    Object? mapy = null,
  }) {
    return _then(_$BookCafeModelImpl(
      bookCafeName: null == bookCafeName
          ? _value.bookCafeName
          : bookCafeName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$BookCafeModelImpl implements _BookCafeModel {
  const _$BookCafeModelImpl(
      {this.bookCafeName = "",
      final List<String> thumbnails = const [],
      this.address = "",
      this.roadAddress = "",
      this.mapx = "",
      this.mapy = ""})
      : _thumbnails = thumbnails;

  factory _$BookCafeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookCafeModelImplFromJson(json);

  @override
  @JsonKey()
  final String bookCafeName;
  final List<String> _thumbnails;
  @override
  @JsonKey()
  List<String> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String roadAddress;
  @override
  @JsonKey()
  final String mapx;
  @override
  @JsonKey()
  final String mapy;

  @override
  String toString() {
    return 'BookCafeModel(bookCafeName: $bookCafeName, thumbnails: $thumbnails, address: $address, roadAddress: $roadAddress, mapx: $mapx, mapy: $mapy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCafeModelImpl &&
            (identical(other.bookCafeName, bookCafeName) ||
                other.bookCafeName == bookCafeName) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookCafeName,
      const DeepCollectionEquality().hash(_thumbnails),
      address,
      roadAddress,
      mapx,
      mapy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCafeModelImplCopyWith<_$BookCafeModelImpl> get copyWith =>
      __$$BookCafeModelImplCopyWithImpl<_$BookCafeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookCafeModelImplToJson(
      this,
    );
  }
}

abstract class _BookCafeModel implements BookCafeModel {
  const factory _BookCafeModel(
      {final String bookCafeName,
      final List<String> thumbnails,
      final String address,
      final String roadAddress,
      final String mapx,
      final String mapy}) = _$BookCafeModelImpl;

  factory _BookCafeModel.fromJson(Map<String, dynamic> json) =
      _$BookCafeModelImpl.fromJson;

  @override
  String get bookCafeName;
  @override
  List<String> get thumbnails;
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
  _$$BookCafeModelImplCopyWith<_$BookCafeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
