// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassroomDashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassroomDashboardStateCopyWith<ClassroomDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomDashboardStateCopyWith<$Res> {
  factory $ClassroomDashboardStateCopyWith(ClassroomDashboardState value,
          $Res Function(ClassroomDashboardState) then) =
      _$ClassroomDashboardStateCopyWithImpl<$Res, ClassroomDashboardState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$ClassroomDashboardStateCopyWithImpl<$Res,
        $Val extends ClassroomDashboardState>
    implements $ClassroomDashboardStateCopyWith<$Res> {
  _$ClassroomDashboardStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ClassroomDashboardStateImplCopyWith<$Res>
    implements $ClassroomDashboardStateCopyWith<$Res> {
  factory _$$ClassroomDashboardStateImplCopyWith(
          _$ClassroomDashboardStateImpl value,
          $Res Function(_$ClassroomDashboardStateImpl) then) =
      __$$ClassroomDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$ClassroomDashboardStateImplCopyWithImpl<$Res>
    extends _$ClassroomDashboardStateCopyWithImpl<$Res,
        _$ClassroomDashboardStateImpl>
    implements _$$ClassroomDashboardStateImplCopyWith<$Res> {
  __$$ClassroomDashboardStateImplCopyWithImpl(
      _$ClassroomDashboardStateImpl _value,
      $Res Function(_$ClassroomDashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$ClassroomDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClassroomDashboardStateImpl implements _ClassroomDashboardState {
  _$ClassroomDashboardStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'ClassroomDashboardState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomDashboardStateImplCopyWith<_$ClassroomDashboardStateImpl>
      get copyWith => __$$ClassroomDashboardStateImplCopyWithImpl<
          _$ClassroomDashboardStateImpl>(this, _$identity);
}

abstract class _ClassroomDashboardState implements ClassroomDashboardState {
  factory _ClassroomDashboardState({int counter}) =
      _$ClassroomDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$ClassroomDashboardStateImplCopyWith<_$ClassroomDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
