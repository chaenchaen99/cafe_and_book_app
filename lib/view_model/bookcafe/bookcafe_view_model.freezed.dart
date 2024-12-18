// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookcafe_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookCafeViewModelState {
  AsyncValue<List<BookCafeModel?>> get bookCafeListState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCafeViewModelStateCopyWith<BookCafeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCafeViewModelStateCopyWith<$Res> {
  factory $BookCafeViewModelStateCopyWith(BookCafeViewModelState value,
          $Res Function(BookCafeViewModelState) then) =
      _$BookCafeViewModelStateCopyWithImpl<$Res, BookCafeViewModelState>;
  @useResult
  $Res call({AsyncValue<List<BookCafeModel?>> bookCafeListState});
}

/// @nodoc
class _$BookCafeViewModelStateCopyWithImpl<$Res,
        $Val extends BookCafeViewModelState>
    implements $BookCafeViewModelStateCopyWith<$Res> {
  _$BookCafeViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookCafeListState = null,
  }) {
    return _then(_value.copyWith(
      bookCafeListState: null == bookCafeListState
          ? _value.bookCafeListState
          : bookCafeListState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BookCafeModel?>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookCafeViewModelStateImplCopyWith<$Res>
    implements $BookCafeViewModelStateCopyWith<$Res> {
  factory _$$BookCafeViewModelStateImplCopyWith(
          _$BookCafeViewModelStateImpl value,
          $Res Function(_$BookCafeViewModelStateImpl) then) =
      __$$BookCafeViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<BookCafeModel?>> bookCafeListState});
}

/// @nodoc
class __$$BookCafeViewModelStateImplCopyWithImpl<$Res>
    extends _$BookCafeViewModelStateCopyWithImpl<$Res,
        _$BookCafeViewModelStateImpl>
    implements _$$BookCafeViewModelStateImplCopyWith<$Res> {
  __$$BookCafeViewModelStateImplCopyWithImpl(
      _$BookCafeViewModelStateImpl _value,
      $Res Function(_$BookCafeViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookCafeListState = null,
  }) {
    return _then(_$BookCafeViewModelStateImpl(
      bookCafeListState: null == bookCafeListState
          ? _value.bookCafeListState
          : bookCafeListState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BookCafeModel?>>,
    ));
  }
}

/// @nodoc

class _$BookCafeViewModelStateImpl implements _BookCafeViewModelState {
  const _$BookCafeViewModelStateImpl(
      {this.bookCafeListState = const AsyncData([])});

  @override
  @JsonKey()
  final AsyncValue<List<BookCafeModel?>> bookCafeListState;

  @override
  String toString() {
    return 'BookCafeViewModelState(bookCafeListState: $bookCafeListState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCafeViewModelStateImpl &&
            (identical(other.bookCafeListState, bookCafeListState) ||
                other.bookCafeListState == bookCafeListState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookCafeListState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCafeViewModelStateImplCopyWith<_$BookCafeViewModelStateImpl>
      get copyWith => __$$BookCafeViewModelStateImplCopyWithImpl<
          _$BookCafeViewModelStateImpl>(this, _$identity);
}

abstract class _BookCafeViewModelState implements BookCafeViewModelState {
  const factory _BookCafeViewModelState(
          {final AsyncValue<List<BookCafeModel?>> bookCafeListState}) =
      _$BookCafeViewModelStateImpl;

  @override
  AsyncValue<List<BookCafeModel?>> get bookCafeListState;
  @override
  @JsonKey(ignore: true)
  _$$BookCafeViewModelStateImplCopyWith<_$BookCafeViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
