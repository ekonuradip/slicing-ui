// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffeedashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoffeedashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;
  List<dynamic> get icon => throw _privateConstructorUsedError;
  set icon(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoffeedashboardStateCopyWith<CoffeedashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeedashboardStateCopyWith<$Res> {
  factory $CoffeedashboardStateCopyWith(CoffeedashboardState value,
          $Res Function(CoffeedashboardState) then) =
      _$CoffeedashboardStateCopyWithImpl<$Res, CoffeedashboardState>;
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> icon});
}

/// @nodoc
class _$CoffeedashboardStateCopyWithImpl<$Res,
        $Val extends CoffeedashboardState>
    implements $CoffeedashboardStateCopyWith<$Res> {
  _$CoffeedashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? icon = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoffeedashboardStateImplCopyWith<$Res>
    implements $CoffeedashboardStateCopyWith<$Res> {
  factory _$$CoffeedashboardStateImplCopyWith(_$CoffeedashboardStateImpl value,
          $Res Function(_$CoffeedashboardStateImpl) then) =
      __$$CoffeedashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> icon});
}

/// @nodoc
class __$$CoffeedashboardStateImplCopyWithImpl<$Res>
    extends _$CoffeedashboardStateCopyWithImpl<$Res, _$CoffeedashboardStateImpl>
    implements _$$CoffeedashboardStateImplCopyWith<$Res> {
  __$$CoffeedashboardStateImplCopyWithImpl(_$CoffeedashboardStateImpl _value,
      $Res Function(_$CoffeedashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? icon = null,
  }) {
    return _then(_$CoffeedashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CoffeedashboardStateImpl implements _CoffeedashboardState {
  _$CoffeedashboardStateImpl(
      {this.counter = 0,
      this.categories = const [
        'Cappuccino',
        'Latte',
        'Espresso',
        'Americano',
        'Macchiato',
        'Mocha',
        'Affogato',
        'Flat White'
      ],
      this.icon = const [
        {"icon": Icons.home},
        {"icon": Icons.favorite},
        {"icon": Icons.shopping_bag},
        {"icon": Icons.person}
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;
  @override
  @JsonKey()
  List<dynamic> icon;

  @override
  String toString() {
    return 'CoffeedashboardState(counter: $counter, categories: $categories, icon: $icon)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeedashboardStateImplCopyWith<_$CoffeedashboardStateImpl>
      get copyWith =>
          __$$CoffeedashboardStateImplCopyWithImpl<_$CoffeedashboardStateImpl>(
              this, _$identity);
}

abstract class _CoffeedashboardState implements CoffeedashboardState {
  factory _CoffeedashboardState(
      {int counter,
      List<dynamic> categories,
      List<dynamic> icon}) = _$CoffeedashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  List<dynamic> get icon;
  set icon(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$CoffeedashboardStateImplCopyWith<_$CoffeedashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
