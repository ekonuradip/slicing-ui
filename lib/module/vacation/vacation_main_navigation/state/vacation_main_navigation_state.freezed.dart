// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacation_main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VacationMainNavigationState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  set selectedIndex(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VacationMainNavigationStateCopyWith<VacationMainNavigationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacationMainNavigationStateCopyWith<$Res> {
  factory $VacationMainNavigationStateCopyWith(
          VacationMainNavigationState value,
          $Res Function(VacationMainNavigationState) then) =
      _$VacationMainNavigationStateCopyWithImpl<$Res,
          VacationMainNavigationState>;
  @useResult
  $Res call({int counter, int selectedIndex});
}

/// @nodoc
class _$VacationMainNavigationStateCopyWithImpl<$Res,
        $Val extends VacationMainNavigationState>
    implements $VacationMainNavigationStateCopyWith<$Res> {
  _$VacationMainNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VacationMainNavigationStateImplCopyWith<$Res>
    implements $VacationMainNavigationStateCopyWith<$Res> {
  factory _$$VacationMainNavigationStateImplCopyWith(
          _$VacationMainNavigationStateImpl value,
          $Res Function(_$VacationMainNavigationStateImpl) then) =
      __$$VacationMainNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, int selectedIndex});
}

/// @nodoc
class __$$VacationMainNavigationStateImplCopyWithImpl<$Res>
    extends _$VacationMainNavigationStateCopyWithImpl<$Res,
        _$VacationMainNavigationStateImpl>
    implements _$$VacationMainNavigationStateImplCopyWith<$Res> {
  __$$VacationMainNavigationStateImplCopyWithImpl(
      _$VacationMainNavigationStateImpl _value,
      $Res Function(_$VacationMainNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$VacationMainNavigationStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VacationMainNavigationStateImpl
    implements _VacationMainNavigationState {
  _$VacationMainNavigationStateImpl({this.counter = 0, this.selectedIndex = 0});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  int selectedIndex;

  @override
  String toString() {
    return 'VacationMainNavigationState(counter: $counter, selectedIndex: $selectedIndex)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VacationMainNavigationStateImplCopyWith<_$VacationMainNavigationStateImpl>
      get copyWith => __$$VacationMainNavigationStateImplCopyWithImpl<
          _$VacationMainNavigationStateImpl>(this, _$identity);
}

abstract class _VacationMainNavigationState
    implements VacationMainNavigationState {
  factory _VacationMainNavigationState({int counter, int selectedIndex}) =
      _$VacationMainNavigationStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  int get selectedIndex;
  set selectedIndex(int value);
  @override
  @JsonKey(ignore: true)
  _$$VacationMainNavigationStateImplCopyWith<_$VacationMainNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
