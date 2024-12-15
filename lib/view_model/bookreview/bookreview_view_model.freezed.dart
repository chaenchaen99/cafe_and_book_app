// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookreview_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookReviewState {
  AsyncValue<BookModel> get bookReviewsState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookReviewStateCopyWith<BookReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookReviewStateCopyWith<$Res> {
  factory $BookReviewStateCopyWith(
          BookReviewState value, $Res Function(BookReviewState) then) =
      _$BookReviewStateCopyWithImpl<$Res, BookReviewState>;
  @useResult
  $Res call({AsyncValue<BookModel> bookReviewsState});
}

/// @nodoc
class _$BookReviewStateCopyWithImpl<$Res, $Val extends BookReviewState>
    implements $BookReviewStateCopyWith<$Res> {
  _$BookReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookReviewsState = null,
  }) {
    return _then(_value.copyWith(
      bookReviewsState: null == bookReviewsState
          ? _value.bookReviewsState
          : bookReviewsState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<BookModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookReviewStateImplCopyWith<$Res>
    implements $BookReviewStateCopyWith<$Res> {
  factory _$$BookReviewStateImplCopyWith(_$BookReviewStateImpl value,
          $Res Function(_$BookReviewStateImpl) then) =
      __$$BookReviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<BookModel> bookReviewsState});
}

/// @nodoc
class __$$BookReviewStateImplCopyWithImpl<$Res>
    extends _$BookReviewStateCopyWithImpl<$Res, _$BookReviewStateImpl>
    implements _$$BookReviewStateImplCopyWith<$Res> {
  __$$BookReviewStateImplCopyWithImpl(
      _$BookReviewStateImpl _value, $Res Function(_$BookReviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookReviewsState = null,
  }) {
    return _then(_$BookReviewStateImpl(
      bookReviewsState: null == bookReviewsState
          ? _value.bookReviewsState
          : bookReviewsState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<BookModel>,
    ));
  }
}

/// @nodoc

class _$BookReviewStateImpl implements _BookReviewState {
  const _$BookReviewStateImpl(
      {this.bookReviewsState = const AsyncValue.loading()});

  @override
  @JsonKey()
  final AsyncValue<BookModel> bookReviewsState;

  @override
  String toString() {
    return 'BookReviewState(bookReviewsState: $bookReviewsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReviewStateImpl &&
            (identical(other.bookReviewsState, bookReviewsState) ||
                other.bookReviewsState == bookReviewsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookReviewsState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReviewStateImplCopyWith<_$BookReviewStateImpl> get copyWith =>
      __$$BookReviewStateImplCopyWithImpl<_$BookReviewStateImpl>(
          this, _$identity);
}

abstract class _BookReviewState implements BookReviewState {
  const factory _BookReviewState(
      {final AsyncValue<BookModel> bookReviewsState}) = _$BookReviewStateImpl;

  @override
  AsyncValue<BookModel> get bookReviewsState;
  @override
  @JsonKey(ignore: true)
  _$$BookReviewStateImplCopyWith<_$BookReviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
