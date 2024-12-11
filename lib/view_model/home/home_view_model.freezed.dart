// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewModelState {
  Map<Category, List<Book>> get bookList =>
      throw _privateConstructorUsedError; //카테고리별 베스트셀러 데이터 리스트
  AsyncValue<Map<Category, List<Book>>> get getbookListState =>
      throw _privateConstructorUsedError; //데이터 처리 상태
  DateTime? get lastFetched => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewModelStateCopyWith<HomeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewModelStateCopyWith<$Res> {
  factory $HomeViewModelStateCopyWith(
          HomeViewModelState value, $Res Function(HomeViewModelState) then) =
      _$HomeViewModelStateCopyWithImpl<$Res, HomeViewModelState>;
  @useResult
  $Res call(
      {Map<Category, List<Book>> bookList,
      AsyncValue<Map<Category, List<Book>>> getbookListState,
      DateTime? lastFetched});
}

/// @nodoc
class _$HomeViewModelStateCopyWithImpl<$Res, $Val extends HomeViewModelState>
    implements $HomeViewModelStateCopyWith<$Res> {
  _$HomeViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookList = null,
    Object? getbookListState = null,
    Object? lastFetched = freezed,
  }) {
    return _then(_value.copyWith(
      bookList: null == bookList
          ? _value.bookList
          : bookList // ignore: cast_nullable_to_non_nullable
              as Map<Category, List<Book>>,
      getbookListState: null == getbookListState
          ? _value.getbookListState
          : getbookListState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Map<Category, List<Book>>>,
      lastFetched: freezed == lastFetched
          ? _value.lastFetched
          : lastFetched // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewModelStateImplCopyWith<$Res>
    implements $HomeViewModelStateCopyWith<$Res> {
  factory _$$HomeViewModelStateImplCopyWith(_$HomeViewModelStateImpl value,
          $Res Function(_$HomeViewModelStateImpl) then) =
      __$$HomeViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<Category, List<Book>> bookList,
      AsyncValue<Map<Category, List<Book>>> getbookListState,
      DateTime? lastFetched});
}

/// @nodoc
class __$$HomeViewModelStateImplCopyWithImpl<$Res>
    extends _$HomeViewModelStateCopyWithImpl<$Res, _$HomeViewModelStateImpl>
    implements _$$HomeViewModelStateImplCopyWith<$Res> {
  __$$HomeViewModelStateImplCopyWithImpl(_$HomeViewModelStateImpl _value,
      $Res Function(_$HomeViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookList = null,
    Object? getbookListState = null,
    Object? lastFetched = freezed,
  }) {
    return _then(_$HomeViewModelStateImpl(
      bookList: null == bookList
          ? _value._bookList
          : bookList // ignore: cast_nullable_to_non_nullable
              as Map<Category, List<Book>>,
      getbookListState: null == getbookListState
          ? _value.getbookListState
          : getbookListState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Map<Category, List<Book>>>,
      lastFetched: freezed == lastFetched
          ? _value.lastFetched
          : lastFetched // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$HomeViewModelStateImpl implements _HomeViewModelState {
  const _$HomeViewModelStateImpl(
      {final Map<Category, List<Book>> bookList = const {},
      this.getbookListState = const AsyncValue.loading(),
      this.lastFetched})
      : _bookList = bookList;

  final Map<Category, List<Book>> _bookList;
  @override
  @JsonKey()
  Map<Category, List<Book>> get bookList {
    if (_bookList is EqualUnmodifiableMapView) return _bookList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bookList);
  }

//카테고리별 베스트셀러 데이터 리스트
  @override
  @JsonKey()
  final AsyncValue<Map<Category, List<Book>>> getbookListState;
//데이터 처리 상태
  @override
  final DateTime? lastFetched;

  @override
  String toString() {
    return 'HomeViewModelState(bookList: $bookList, getbookListState: $getbookListState, lastFetched: $lastFetched)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._bookList, _bookList) &&
            (identical(other.getbookListState, getbookListState) ||
                other.getbookListState == getbookListState) &&
            (identical(other.lastFetched, lastFetched) ||
                other.lastFetched == lastFetched));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bookList),
      getbookListState,
      lastFetched);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewModelStateImplCopyWith<_$HomeViewModelStateImpl> get copyWith =>
      __$$HomeViewModelStateImplCopyWithImpl<_$HomeViewModelStateImpl>(
          this, _$identity);
}

abstract class _HomeViewModelState implements HomeViewModelState {
  const factory _HomeViewModelState(
      {final Map<Category, List<Book>> bookList,
      final AsyncValue<Map<Category, List<Book>>> getbookListState,
      final DateTime? lastFetched}) = _$HomeViewModelStateImpl;

  @override
  Map<Category, List<Book>> get bookList;
  @override //카테고리별 베스트셀러 데이터 리스트
  AsyncValue<Map<Category, List<Book>>> get getbookListState;
  @override //데이터 처리 상태
  DateTime? get lastFetched;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewModelStateImplCopyWith<_$HomeViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
