// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacation_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VacationDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VacationDetailStateCopyWith<VacationDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacationDetailStateCopyWith<$Res> {
  factory $VacationDetailStateCopyWith(
          VacationDetailState value, $Res Function(VacationDetailState) then) =
      _$VacationDetailStateCopyWithImpl<$Res, VacationDetailState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$VacationDetailStateCopyWithImpl<$Res, $Val extends VacationDetailState>
    implements $VacationDetailStateCopyWith<$Res> {
  _$VacationDetailStateCopyWithImpl(this._value, this._then);

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
abstract class _$$VacationDetailStateImplCopyWith<$Res>
    implements $VacationDetailStateCopyWith<$Res> {
  factory _$$VacationDetailStateImplCopyWith(_$VacationDetailStateImpl value,
          $Res Function(_$VacationDetailStateImpl) then) =
      __$$VacationDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$VacationDetailStateImplCopyWithImpl<$Res>
    extends _$VacationDetailStateCopyWithImpl<$Res, _$VacationDetailStateImpl>
    implements _$$VacationDetailStateImplCopyWith<$Res> {
  __$$VacationDetailStateImplCopyWithImpl(_$VacationDetailStateImpl _value,
      $Res Function(_$VacationDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$VacationDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VacationDetailStateImpl implements _VacationDetailState {
  _$VacationDetailStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'VacationDetailState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VacationDetailStateImplCopyWith<_$VacationDetailStateImpl> get copyWith =>
      __$$VacationDetailStateImplCopyWithImpl<_$VacationDetailStateImpl>(
          this, _$identity);
}

abstract class _VacationDetailState implements VacationDetailState {
  factory _VacationDetailState({int counter}) = _$VacationDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$VacationDetailStateImplCopyWith<_$VacationDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
