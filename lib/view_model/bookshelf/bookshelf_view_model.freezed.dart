// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookshelf_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookshelfViewModelState {
  AsyncValue<List<BookModel>> get mybooksState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookshelfViewModelStateCopyWith<BookshelfViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookshelfViewModelStateCopyWith<$Res> {
  factory $BookshelfViewModelStateCopyWith(BookshelfViewModelState value,
          $Res Function(BookshelfViewModelState) then) =
      _$BookshelfViewModelStateCopyWithImpl<$Res, BookshelfViewModelState>;
  @useResult
  $Res call({AsyncValue<List<BookModel>> mybooksState});
}

/// @nodoc
class _$BookshelfViewModelStateCopyWithImpl<$Res,
        $Val extends BookshelfViewModelState>
    implements $BookshelfViewModelStateCopyWith<$Res> {
  _$BookshelfViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mybooksState = null,
  }) {
    return _then(_value.copyWith(
      mybooksState: null == mybooksState
          ? _value.mybooksState
          : mybooksState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BookModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookshelfViewModelStateImplCopyWith<$Res>
    implements $BookshelfViewModelStateCopyWith<$Res> {
  factory _$$BookshelfViewModelStateImplCopyWith(
          _$BookshelfViewModelStateImpl value,
          $Res Function(_$BookshelfViewModelStateImpl) then) =
      __$$BookshelfViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<BookModel>> mybooksState});
}

/// @nodoc
class __$$BookshelfViewModelStateImplCopyWithImpl<$Res>
    extends _$BookshelfViewModelStateCopyWithImpl<$Res,
        _$BookshelfViewModelStateImpl>
    implements _$$BookshelfViewModelStateImplCopyWith<$Res> {
  __$$BookshelfViewModelStateImplCopyWithImpl(
      _$BookshelfViewModelStateImpl _value,
      $Res Function(_$BookshelfViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mybooksState = null,
  }) {
    return _then(_$BookshelfViewModelStateImpl(
      mybooksState: null == mybooksState
          ? _value.mybooksState
          : mybooksState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BookModel>>,
    ));
  }
}

/// @nodoc

class _$BookshelfViewModelStateImpl implements _BookshelfViewModelState {
  const _$BookshelfViewModelStateImpl(
      {this.mybooksState = const AsyncValue.data([])});

  @override
  @JsonKey()
  final AsyncValue<List<BookModel>> mybooksState;

  @override
  String toString() {
    return 'BookshelfViewModelState(mybooksState: $mybooksState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookshelfViewModelStateImpl &&
            (identical(other.mybooksState, mybooksState) ||
                other.mybooksState == mybooksState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mybooksState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookshelfViewModelStateImplCopyWith<_$BookshelfViewModelStateImpl>
      get copyWith => __$$BookshelfViewModelStateImplCopyWithImpl<
          _$BookshelfViewModelStateImpl>(this, _$identity);
}

abstract class _BookshelfViewModelState implements BookshelfViewModelState {
  const factory _BookshelfViewModelState(
          {final AsyncValue<List<BookModel>> mybooksState}) =
      _$BookshelfViewModelStateImpl;

  @override
  AsyncValue<List<BookModel>> get mybooksState;
  @override
  @JsonKey(ignore: true)
  _$$BookshelfViewModelStateImplCopyWith<_$BookshelfViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
