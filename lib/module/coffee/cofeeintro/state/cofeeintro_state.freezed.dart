// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cofeeintro_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CofeeintroState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CofeeintroStateCopyWith<CofeeintroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CofeeintroStateCopyWith<$Res> {
  factory $CofeeintroStateCopyWith(
          CofeeintroState value, $Res Function(CofeeintroState) then) =
      _$CofeeintroStateCopyWithImpl<$Res, CofeeintroState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CofeeintroStateCopyWithImpl<$Res, $Val extends CofeeintroState>
    implements $CofeeintroStateCopyWith<$Res> {
  _$CofeeintroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CofeeintroStateImplCopyWith<$Res>
    implements $CofeeintroStateCopyWith<$Res> {
  factory _$$CofeeintroStateImplCopyWith(_$CofeeintroStateImpl value,
          $Res Function(_$CofeeintroStateImpl) then) =
      __$$CofeeintroStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$CofeeintroStateImplCopyWithImpl<$Res>
    extends _$CofeeintroStateCopyWithImpl<$Res, _$CofeeintroStateImpl>
    implements _$$CofeeintroStateImplCopyWith<$Res> {
  __$$CofeeintroStateImplCopyWithImpl(
      _$CofeeintroStateImpl _value, $Res Function(_$CofeeintroStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$CofeeintroStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CofeeintroStateImpl implements _CofeeintroState {
  _$CofeeintroStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'CofeeintroState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CofeeintroStateImplCopyWith<_$CofeeintroStateImpl> get copyWith =>
      __$$CofeeintroStateImplCopyWithImpl<_$CofeeintroStateImpl>(
          this, _$identity);
}

abstract class _CofeeintroState implements CofeeintroState {
  factory _CofeeintroState({int counter}) = _$CofeeintroStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$CofeeintroStateImplCopyWith<_$CofeeintroStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
