// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookListDTO _$BookListDTOFromJson(Map<String, dynamic> json) {
  return _BookListDTO.fromJson(json);
}

/// @nodoc
mixin _$BookListDTO {
  String get lastBuildDate => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get display => throw _privateConstructorUsedError;
  List<BookDto> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookListDTOCopyWith<BookListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListDTOCopyWith<$Res> {
  factory $BookListDTOCopyWith(
          BookListDTO value, $Res Function(BookListDTO) then) =
      _$BookListDTOCopyWithImpl<$Res, BookListDTO>;
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      List<BookDto> items});
}

/// @nodoc
class _$BookListDTOCopyWithImpl<$Res, $Val extends BookListDTO>
    implements $BookListDTOCopyWith<$Res> {
  _$BookListDTOCopyWithImpl(this._value, this._then);

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
    Object? items = null,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookListDTOImplCopyWith<$Res>
    implements $BookListDTOCopyWith<$Res> {
  factory _$$BookListDTOImplCopyWith(
          _$BookListDTOImpl value, $Res Function(_$BookListDTOImpl) then) =
      __$$BookListDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      List<BookDto> items});
}

/// @nodoc
class __$$BookListDTOImplCopyWithImpl<$Res>
    extends _$BookListDTOCopyWithImpl<$Res, _$BookListDTOImpl>
    implements _$$BookListDTOImplCopyWith<$Res> {
  __$$BookListDTOImplCopyWithImpl(
      _$BookListDTOImpl _value, $Res Function(_$BookListDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastBuildDate = null,
    Object? total = null,
    Object? start = null,
    Object? display = null,
    Object? items = null,
  }) {
    return _then(_$BookListDTOImpl(
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
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookListDTOImpl implements _BookListDTO {
  const _$BookListDTOImpl(
      {required this.lastBuildDate,
      required this.total,
      required this.start,
      required this.display,
      required final List<BookDto> items})
      : _items = items;

  factory _$BookListDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookListDTOImplFromJson(json);

  @override
  final String lastBuildDate;
  @override
  final int total;
  @override
  final int start;
  @override
  final int display;
  final List<BookDto> _items;
  @override
  List<BookDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BookListDTO(lastBuildDate: $lastBuildDate, total: $total, start: $start, display: $display, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookListDTOImpl &&
            (identical(other.lastBuildDate, lastBuildDate) ||
                other.lastBuildDate == lastBuildDate) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.display, display) || other.display == display) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastBuildDate, total, start,
      display, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookListDTOImplCopyWith<_$BookListDTOImpl> get copyWith =>
      __$$BookListDTOImplCopyWithImpl<_$BookListDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookListDTOImplToJson(
      this,
    );
  }
}

abstract class _BookListDTO implements BookListDTO {
  const factory _BookListDTO(
      {required final String lastBuildDate,
      required final int total,
      required final int start,
      required final int display,
      required final List<BookDto> items}) = _$BookListDTOImpl;

  factory _BookListDTO.fromJson(Map<String, dynamic> json) =
      _$BookListDTOImpl.fromJson;

  @override
  String get lastBuildDate;
  @override
  int get total;
  @override
  int get start;
  @override
  int get display;
  @override
  List<BookDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$BookListDTOImplCopyWith<_$BookListDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookDto _$BookDtoFromJson(Map<String, dynamic> json) {
  return _BookDto.fromJson(json);
}

/// @nodoc
mixin _$BookDto {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get pubdate => throw _privateConstructorUsedError;
  String get isbn => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDtoCopyWith<BookDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDtoCopyWith<$Res> {
  factory $BookDtoCopyWith(BookDto value, $Res Function(BookDto) then) =
      _$BookDtoCopyWithImpl<$Res, BookDto>;
  @useResult
  $Res call(
      {String title,
      String link,
      String image,
      String author,
      String discount,
      String publisher,
      String pubdate,
      String isbn,
      String description});
}

/// @nodoc
class _$BookDtoCopyWithImpl<$Res, $Val extends BookDto>
    implements $BookDtoCopyWith<$Res> {
  _$BookDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? image = null,
    Object? author = null,
    Object? discount = null,
    Object? publisher = null,
    Object? pubdate = null,
    Object? isbn = null,
    Object? description = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      pubdate: null == pubdate
          ? _value.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDtoImplCopyWith<$Res> implements $BookDtoCopyWith<$Res> {
  factory _$$BookDtoImplCopyWith(
          _$BookDtoImpl value, $Res Function(_$BookDtoImpl) then) =
      __$$BookDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      String image,
      String author,
      String discount,
      String publisher,
      String pubdate,
      String isbn,
      String description});
}

/// @nodoc
class __$$BookDtoImplCopyWithImpl<$Res>
    extends _$BookDtoCopyWithImpl<$Res, _$BookDtoImpl>
    implements _$$BookDtoImplCopyWith<$Res> {
  __$$BookDtoImplCopyWithImpl(
      _$BookDtoImpl _value, $Res Function(_$BookDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? image = null,
    Object? author = null,
    Object? discount = null,
    Object? publisher = null,
    Object? pubdate = null,
    Object? isbn = null,
    Object? description = null,
  }) {
    return _then(_$BookDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      pubdate: null == pubdate
          ? _value.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDtoImpl implements _BookDto {
  const _$BookDtoImpl(
      {required this.title,
      required this.link,
      required this.image,
      required this.author,
      required this.discount,
      required this.publisher,
      required this.pubdate,
      required this.isbn,
      required this.description});

  factory _$BookDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String image;
  @override
  final String author;
  @override
  final String discount;
  @override
  final String publisher;
  @override
  final String pubdate;
  @override
  final String isbn;
  @override
  final String description;

  @override
  String toString() {
    return 'BookDto(title: $title, link: $link, image: $image, author: $author, discount: $discount, publisher: $publisher, pubdate: $pubdate, isbn: $isbn, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.pubdate, pubdate) || other.pubdate == pubdate) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, image, author,
      discount, publisher, pubdate, isbn, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDtoImplCopyWith<_$BookDtoImpl> get copyWith =>
      __$$BookDtoImplCopyWithImpl<_$BookDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDtoImplToJson(
      this,
    );
  }
}

abstract class _BookDto implements BookDto {
  const factory _BookDto(
      {required final String title,
      required final String link,
      required final String image,
      required final String author,
      required final String discount,
      required final String publisher,
      required final String pubdate,
      required final String isbn,
      required final String description}) = _$BookDtoImpl;

  factory _BookDto.fromJson(Map<String, dynamic> json) = _$BookDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get image;
  @override
  String get author;
  @override
  String get discount;
  @override
  String get publisher;
  @override
  String get pubdate;
  @override
  String get isbn;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$BookDtoImplCopyWith<_$BookDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
