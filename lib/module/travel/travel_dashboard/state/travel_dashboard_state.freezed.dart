// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelDashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;
  List<dynamic> get bottomNavbar => throw _privateConstructorUsedError;
  set bottomNavbar(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelDashboardStateCopyWith<TravelDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDashboardStateCopyWith<$Res> {
  factory $TravelDashboardStateCopyWith(TravelDashboardState value,
          $Res Function(TravelDashboardState) then) =
      _$TravelDashboardStateCopyWithImpl<$Res, TravelDashboardState>;
  @useResult
  $Res call(
      {int counter, List<dynamic> categories, List<dynamic> bottomNavbar});
}

/// @nodoc
class _$TravelDashboardStateCopyWithImpl<$Res,
        $Val extends TravelDashboardState>
    implements $TravelDashboardStateCopyWith<$Res> {
  _$TravelDashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? bottomNavbar = null,
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
      bottomNavbar: null == bottomNavbar
          ? _value.bottomNavbar
          : bottomNavbar // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelDashboardStateImplCopyWith<$Res>
    implements $TravelDashboardStateCopyWith<$Res> {
  factory _$$TravelDashboardStateImplCopyWith(_$TravelDashboardStateImpl value,
          $Res Function(_$TravelDashboardStateImpl) then) =
      __$$TravelDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter, List<dynamic> categories, List<dynamic> bottomNavbar});
}

/// @nodoc
class __$$TravelDashboardStateImplCopyWithImpl<$Res>
    extends _$TravelDashboardStateCopyWithImpl<$Res, _$TravelDashboardStateImpl>
    implements _$$TravelDashboardStateImplCopyWith<$Res> {
  __$$TravelDashboardStateImplCopyWithImpl(_$TravelDashboardStateImpl _value,
      $Res Function(_$TravelDashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? bottomNavbar = null,
  }) {
    return _then(_$TravelDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      bottomNavbar: null == bottomNavbar
          ? _value.bottomNavbar
          : bottomNavbar // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$TravelDashboardStateImpl implements _TravelDashboardState {
  _$TravelDashboardStateImpl(
      {this.counter = 0,
      this.categories = const [
        {"icon": Icons.home_filled, "label": "House"},
        {"icon": Icons.villa_sharp, "label": "Villa"},
        {"icon": Icons.apartment_sharp, "label": "Apartment"},
        {"icon": Icons.bungalow_sharp, "label": "Bungalow"}
      ],
      this.bottomNavbar = const [
        {"icon": Icons.home_filled, "label": "Home"},
        {"icon": Icons.location_on, "label": "Explore"},
        {"icon": Icons.favorite, "label": "Favorite"},
        {"icon": Icons.chat, "label": "Chat"},
        {"icon": Icons.person, "label": "Profile"}
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;
  @override
  @JsonKey()
  List<dynamic> bottomNavbar;

  @override
  String toString() {
    return 'TravelDashboardState(counter: $counter, categories: $categories, bottomNavbar: $bottomNavbar)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDashboardStateImplCopyWith<_$TravelDashboardStateImpl>
      get copyWith =>
          __$$TravelDashboardStateImplCopyWithImpl<_$TravelDashboardStateImpl>(
              this, _$identity);
}

abstract class _TravelDashboardState implements TravelDashboardState {
  factory _TravelDashboardState(
      {int counter,
      List<dynamic> categories,
      List<dynamic> bottomNavbar}) = _$TravelDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  List<dynamic> get bottomNavbar;
  set bottomNavbar(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$TravelDashboardStateImplCopyWith<_$TravelDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
