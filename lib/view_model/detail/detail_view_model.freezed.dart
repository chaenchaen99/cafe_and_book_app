// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailViewModelState {
  bool get isAlreadySaved => throw _privateConstructorUsedError;
  AsyncValue<List<Book>> get bookshelfState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailViewModelStateCopyWith<DetailViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailViewModelStateCopyWith<$Res> {
  factory $DetailViewModelStateCopyWith(DetailViewModelState value,
          $Res Function(DetailViewModelState) then) =
      _$DetailViewModelStateCopyWithImpl<$Res, DetailViewModelState>;
  @useResult
  $Res call({bool isAlreadySaved, AsyncValue<List<Book>> bookshelfState});
}

/// @nodoc
class _$DetailViewModelStateCopyWithImpl<$Res,
        $Val extends DetailViewModelState>
    implements $DetailViewModelStateCopyWith<$Res> {
  _$DetailViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlreadySaved = null,
    Object? bookshelfState = null,
  }) {
    return _then(_value.copyWith(
      isAlreadySaved: null == isAlreadySaved
          ? _value.isAlreadySaved
          : isAlreadySaved // ignore: cast_nullable_to_non_nullable
              as bool,
      bookshelfState: null == bookshelfState
          ? _value.bookshelfState
          : bookshelfState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Book>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailViewModelStateImplCopyWith<$Res>
    implements $DetailViewModelStateCopyWith<$Res> {
  factory _$$DetailViewModelStateImplCopyWith(_$DetailViewModelStateImpl value,
          $Res Function(_$DetailViewModelStateImpl) then) =
      __$$DetailViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAlreadySaved, AsyncValue<List<Book>> bookshelfState});
}

/// @nodoc
class __$$DetailViewModelStateImplCopyWithImpl<$Res>
    extends _$DetailViewModelStateCopyWithImpl<$Res, _$DetailViewModelStateImpl>
    implements _$$DetailViewModelStateImplCopyWith<$Res> {
  __$$DetailViewModelStateImplCopyWithImpl(_$DetailViewModelStateImpl _value,
      $Res Function(_$DetailViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlreadySaved = null,
    Object? bookshelfState = null,
  }) {
    return _then(_$DetailViewModelStateImpl(
      isAlreadySaved: null == isAlreadySaved
          ? _value.isAlreadySaved
          : isAlreadySaved // ignore: cast_nullable_to_non_nullable
              as bool,
      bookshelfState: null == bookshelfState
          ? _value.bookshelfState
          : bookshelfState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Book>>,
    ));
  }
}

/// @nodoc

class _$DetailViewModelStateImpl
    with DiagnosticableTreeMixin
    implements _DetailViewModelState {
  const _$DetailViewModelStateImpl(
      {this.isAlreadySaved = false,
      this.bookshelfState = const AsyncValue.data([])});

  @override
  @JsonKey()
  final bool isAlreadySaved;
  @override
  @JsonKey()
  final AsyncValue<List<Book>> bookshelfState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailViewModelState(isAlreadySaved: $isAlreadySaved, bookshelfState: $bookshelfState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailViewModelState'))
      ..add(DiagnosticsProperty('isAlreadySaved', isAlreadySaved))
      ..add(DiagnosticsProperty('bookshelfState', bookshelfState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailViewModelStateImpl &&
            (identical(other.isAlreadySaved, isAlreadySaved) ||
                other.isAlreadySaved == isAlreadySaved) &&
            (identical(other.bookshelfState, bookshelfState) ||
                other.bookshelfState == bookshelfState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlreadySaved, bookshelfState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailViewModelStateImplCopyWith<_$DetailViewModelStateImpl>
      get copyWith =>
          __$$DetailViewModelStateImplCopyWithImpl<_$DetailViewModelStateImpl>(
              this, _$identity);
}

abstract class _DetailViewModelState implements DetailViewModelState {
  const factory _DetailViewModelState(
          {final bool isAlreadySaved,
          final AsyncValue<List<Book>> bookshelfState}) =
      _$DetailViewModelStateImpl;

  @override
  bool get isAlreadySaved;
  @override
  AsyncValue<List<Book>> get bookshelfState;
  @override
  @JsonKey(ignore: true)
  _$$DetailViewModelStateImplCopyWith<_$DetailViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
