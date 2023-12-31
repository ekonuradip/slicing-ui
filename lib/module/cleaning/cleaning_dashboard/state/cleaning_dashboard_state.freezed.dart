// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaning_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CleaningDashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CleaningDashboardStateCopyWith<CleaningDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleaningDashboardStateCopyWith<$Res> {
  factory $CleaningDashboardStateCopyWith(CleaningDashboardState value,
          $Res Function(CleaningDashboardState) then) =
      _$CleaningDashboardStateCopyWithImpl<$Res, CleaningDashboardState>;
  @useResult
  $Res call({int counter, List<dynamic> categories});
}

/// @nodoc
class _$CleaningDashboardStateCopyWithImpl<$Res,
        $Val extends CleaningDashboardState>
    implements $CleaningDashboardStateCopyWith<$Res> {
  _$CleaningDashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CleaningDashboardStateImplCopyWith<$Res>
    implements $CleaningDashboardStateCopyWith<$Res> {
  factory _$$CleaningDashboardStateImplCopyWith(
          _$CleaningDashboardStateImpl value,
          $Res Function(_$CleaningDashboardStateImpl) then) =
      __$$CleaningDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> categories});
}

/// @nodoc
class __$$CleaningDashboardStateImplCopyWithImpl<$Res>
    extends _$CleaningDashboardStateCopyWithImpl<$Res,
        _$CleaningDashboardStateImpl>
    implements _$$CleaningDashboardStateImplCopyWith<$Res> {
  __$$CleaningDashboardStateImplCopyWithImpl(
      _$CleaningDashboardStateImpl _value,
      $Res Function(_$CleaningDashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
  }) {
    return _then(_$CleaningDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CleaningDashboardStateImpl implements _CleaningDashboardState {
  _$CleaningDashboardStateImpl(
      {this.counter = 0,
      this.categories = const [
        {"icon": Icons.home, "label": "Cleaning"},
        {"icon": Icons.home_repair_service, "label": "Repairing"},
        {"icon": Icons.plumbing, "label": "Plumbing"},
        {"icon": Icons.car_repair, "label": "Shifting"}
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;

  @override
  String toString() {
    return 'CleaningDashboardState(counter: $counter, categories: $categories)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CleaningDashboardStateImplCopyWith<_$CleaningDashboardStateImpl>
      get copyWith => __$$CleaningDashboardStateImplCopyWithImpl<
          _$CleaningDashboardStateImpl>(this, _$identity);
}

abstract class _CleaningDashboardState implements CleaningDashboardState {
  factory _CleaningDashboardState({int counter, List<dynamic> categories}) =
      _$CleaningDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$CleaningDashboardStateImplCopyWith<_$CleaningDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
