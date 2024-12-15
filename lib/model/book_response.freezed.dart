// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookListResponse _$BookListResponseFromJson(Map<String, dynamic> json) {
  return _BookListResponse.fromJson(json);
}

/// @nodoc
mixin _$BookListResponse {
  String get lastBuildDate => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get display => throw _privateConstructorUsedError;
  List<BookResponse> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookListResponseCopyWith<BookListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListResponseCopyWith<$Res> {
  factory $BookListResponseCopyWith(
          BookListResponse value, $Res Function(BookListResponse) then) =
      _$BookListResponseCopyWithImpl<$Res, BookListResponse>;
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      List<BookResponse> items});
}

/// @nodoc
class _$BookListResponseCopyWithImpl<$Res, $Val extends BookListResponse>
    implements $BookListResponseCopyWith<$Res> {
  _$BookListResponseCopyWithImpl(this._value, this._then);

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
              as List<BookResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookListResponseImplCopyWith<$Res>
    implements $BookListResponseCopyWith<$Res> {
  factory _$$BookListResponseImplCopyWith(_$BookListResponseImpl value,
          $Res Function(_$BookListResponseImpl) then) =
      __$$BookListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastBuildDate,
      int total,
      int start,
      int display,
      List<BookResponse> items});
}

/// @nodoc
class __$$BookListResponseImplCopyWithImpl<$Res>
    extends _$BookListResponseCopyWithImpl<$Res, _$BookListResponseImpl>
    implements _$$BookListResponseImplCopyWith<$Res> {
  __$$BookListResponseImplCopyWithImpl(_$BookListResponseImpl _value,
      $Res Function(_$BookListResponseImpl) _then)
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
    return _then(_$BookListResponseImpl(
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
              as List<BookResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookListResponseImpl implements _BookListResponse {
  const _$BookListResponseImpl(
      {required this.lastBuildDate,
      required this.total,
      required this.start,
      required this.display,
      required final List<BookResponse> items})
      : _items = items;

  factory _$BookListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookListResponseImplFromJson(json);

  @override
  final String lastBuildDate;
  @override
  final int total;
  @override
  final int start;
  @override
  final int display;
  final List<BookResponse> _items;
  @override
  List<BookResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BookListResponse(lastBuildDate: $lastBuildDate, total: $total, start: $start, display: $display, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookListResponseImpl &&
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
  _$$BookListResponseImplCopyWith<_$BookListResponseImpl> get copyWith =>
      __$$BookListResponseImplCopyWithImpl<_$BookListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookListResponseImplToJson(
      this,
    );
  }
}

abstract class _BookListResponse implements BookListResponse {
  const factory _BookListResponse(
      {required final String lastBuildDate,
      required final int total,
      required final int start,
      required final int display,
      required final List<BookResponse> items}) = _$BookListResponseImpl;

  factory _BookListResponse.fromJson(Map<String, dynamic> json) =
      _$BookListResponseImpl.fromJson;

  @override
  String get lastBuildDate;
  @override
  int get total;
  @override
  int get start;
  @override
  int get display;
  @override
  List<BookResponse> get items;
  @override
  @JsonKey(ignore: true)
  _$$BookListResponseImplCopyWith<_$BookListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) {
  return _BookResponse.fromJson(json);
}

/// @nodoc
mixin _$BookResponse {
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
  $BookResponseCopyWith<BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResponseCopyWith<$Res> {
  factory $BookResponseCopyWith(
          BookResponse value, $Res Function(BookResponse) then) =
      _$BookResponseCopyWithImpl<$Res, BookResponse>;
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
class _$BookResponseCopyWithImpl<$Res, $Val extends BookResponse>
    implements $BookResponseCopyWith<$Res> {
  _$BookResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$BookResponseImplCopyWith<$Res>
    implements $BookResponseCopyWith<$Res> {
  factory _$$BookResponseImplCopyWith(
          _$BookResponseImpl value, $Res Function(_$BookResponseImpl) then) =
      __$$BookResponseImplCopyWithImpl<$Res>;
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
class __$$BookResponseImplCopyWithImpl<$Res>
    extends _$BookResponseCopyWithImpl<$Res, _$BookResponseImpl>
    implements _$$BookResponseImplCopyWith<$Res> {
  __$$BookResponseImplCopyWithImpl(
      _$BookResponseImpl _value, $Res Function(_$BookResponseImpl) _then)
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
    return _then(_$BookResponseImpl(
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
class _$BookResponseImpl implements _BookResponse {
  const _$BookResponseImpl(
      {required this.title,
      required this.link,
      required this.image,
      required this.author,
      required this.discount,
      required this.publisher,
      required this.pubdate,
      required this.isbn,
      required this.description});

  factory _$BookResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookResponseImplFromJson(json);

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
    return 'BookResponse(title: $title, link: $link, image: $image, author: $author, discount: $discount, publisher: $publisher, pubdate: $pubdate, isbn: $isbn, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookResponseImpl &&
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
  _$$BookResponseImplCopyWith<_$BookResponseImpl> get copyWith =>
      __$$BookResponseImplCopyWithImpl<_$BookResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookResponseImplToJson(
      this,
    );
  }
}

abstract class _BookResponse implements BookResponse {
  const factory _BookResponse(
      {required final String title,
      required final String link,
      required final String image,
      required final String author,
      required final String discount,
      required final String publisher,
      required final String pubdate,
      required final String isbn,
      required final String description}) = _$BookResponseImpl;

  factory _BookResponse.fromJson(Map<String, dynamic> json) =
      _$BookResponseImpl.fromJson;

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
  _$$BookResponseImplCopyWith<_$BookResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
