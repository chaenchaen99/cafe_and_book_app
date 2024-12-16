// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchViewModelState {
  List<BookModel> get searchResult => throw _privateConstructorUsedError;
  AsyncValue<List<BookModel>> get searchState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchViewModelStateCopyWith<SearchViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchViewModelStateCopyWith<$Res> {
  factory $SearchViewModelStateCopyWith(SearchViewModelState value,
          $Res Function(SearchViewModelState) then) =
      _$SearchViewModelStateCopyWithImpl<$Res, SearchViewModelState>;
  @useResult
  $Res call(
      {List<BookModel> searchResult, AsyncValue<List<BookModel>> searchState});
}

/// @nodoc
class _$SearchViewModelStateCopyWithImpl<$Res,
        $Val extends SearchViewModelState>
    implements $SearchViewModelStateCopyWith<$Res> {
  _$SearchViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? searchState = null,
  }) {
    return _then(_value.copyWith(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      searchState: null == searchState
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BookModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchViewModelStateImplCopyWith<$Res>
    implements $SearchViewModelStateCopyWith<$Res> {
  factory _$$SearchViewModelStateImplCopyWith(_$SearchViewModelStateImpl value,
          $Res Function(_$SearchViewModelStateImpl) then) =
      __$$SearchViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> searchResult, AsyncValue<List<BookModel>> searchState});
}

/// @nodoc
class __$$SearchViewModelStateImplCopyWithImpl<$Res>
    extends _$SearchViewModelStateCopyWithImpl<$Res, _$SearchViewModelStateImpl>
    implements _$$SearchViewModelStateImplCopyWith<$Res> {
  __$$SearchViewModelStateImplCopyWithImpl(_$SearchViewModelStateImpl _value,
      $Res Function(_$SearchViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? searchState = null,
  }) {
    return _then(_$SearchViewModelStateImpl(
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      searchState: null == searchState
          ? _value.searchState
          : searchState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BookModel>>,
    ));
  }
}

/// @nodoc

class _$SearchViewModelStateImpl implements _SearchViewModelState {
  const _$SearchViewModelStateImpl(
      {final List<BookModel> searchResult = const [],
      this.searchState = const AsyncValue.data([])})
      : _searchResult = searchResult;

  final List<BookModel> _searchResult;
  @override
  @JsonKey()
  List<BookModel> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  @JsonKey()
  final AsyncValue<List<BookModel>> searchState;

  @override
  String toString() {
    return 'SearchViewModelState(searchResult: $searchResult, searchState: $searchState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchViewModelStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            (identical(other.searchState, searchState) ||
                other.searchState == searchState));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_searchResult), searchState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchViewModelStateImplCopyWith<_$SearchViewModelStateImpl>
      get copyWith =>
          __$$SearchViewModelStateImplCopyWithImpl<_$SearchViewModelStateImpl>(
              this, _$identity);
}

abstract class _SearchViewModelState implements SearchViewModelState {
  const factory _SearchViewModelState(
          {final List<BookModel> searchResult,
          final AsyncValue<List<BookModel>> searchState}) =
      _$SearchViewModelStateImpl;

  @override
  List<BookModel> get searchResult;
  @override
  AsyncValue<List<BookModel>> get searchState;
  @override
  @JsonKey(ignore: true)
  _$$SearchViewModelStateImplCopyWith<_$SearchViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
