// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaning_main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CleaningMainNavigationState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  set selectedIndex(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CleaningMainNavigationStateCopyWith<CleaningMainNavigationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleaningMainNavigationStateCopyWith<$Res> {
  factory $CleaningMainNavigationStateCopyWith(
          CleaningMainNavigationState value,
          $Res Function(CleaningMainNavigationState) then) =
      _$CleaningMainNavigationStateCopyWithImpl<$Res,
          CleaningMainNavigationState>;
  @useResult
  $Res call({int counter, int selectedIndex});
}

/// @nodoc
class _$CleaningMainNavigationStateCopyWithImpl<$Res,
        $Val extends CleaningMainNavigationState>
    implements $CleaningMainNavigationStateCopyWith<$Res> {
  _$CleaningMainNavigationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CleaningMainNavigationStateImplCopyWith<$Res>
    implements $CleaningMainNavigationStateCopyWith<$Res> {
  factory _$$CleaningMainNavigationStateImplCopyWith(
          _$CleaningMainNavigationStateImpl value,
          $Res Function(_$CleaningMainNavigationStateImpl) then) =
      __$$CleaningMainNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, int selectedIndex});
}

/// @nodoc
class __$$CleaningMainNavigationStateImplCopyWithImpl<$Res>
    extends _$CleaningMainNavigationStateCopyWithImpl<$Res,
        _$CleaningMainNavigationStateImpl>
    implements _$$CleaningMainNavigationStateImplCopyWith<$Res> {
  __$$CleaningMainNavigationStateImplCopyWithImpl(
      _$CleaningMainNavigationStateImpl _value,
      $Res Function(_$CleaningMainNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$CleaningMainNavigationStateImpl(
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

class _$CleaningMainNavigationStateImpl
    implements _CleaningMainNavigationState {
  _$CleaningMainNavigationStateImpl({this.counter = 0, this.selectedIndex = 0});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  int selectedIndex;

  @override
  String toString() {
    return 'CleaningMainNavigationState(counter: $counter, selectedIndex: $selectedIndex)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CleaningMainNavigationStateImplCopyWith<_$CleaningMainNavigationStateImpl>
      get copyWith => __$$CleaningMainNavigationStateImplCopyWithImpl<
          _$CleaningMainNavigationStateImpl>(this, _$identity);
}

abstract class _CleaningMainNavigationState
    implements CleaningMainNavigationState {
  factory _CleaningMainNavigationState({int counter, int selectedIndex}) =
      _$CleaningMainNavigationStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  int get selectedIndex;
  set selectedIndex(int value);
  @override
  @JsonKey(ignore: true)
  _$$CleaningMainNavigationStateImplCopyWith<_$CleaningMainNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
