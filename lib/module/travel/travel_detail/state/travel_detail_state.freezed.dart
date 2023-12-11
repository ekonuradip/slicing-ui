// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;
  List<dynamic> get facilites => throw _privateConstructorUsedError;
  set facilites(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelDetailStateCopyWith<TravelDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDetailStateCopyWith<$Res> {
  factory $TravelDetailStateCopyWith(
          TravelDetailState value, $Res Function(TravelDetailState) then) =
      _$TravelDetailStateCopyWithImpl<$Res, TravelDetailState>;
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> facilites});
}

/// @nodoc
class _$TravelDetailStateCopyWithImpl<$Res, $Val extends TravelDetailState>
    implements $TravelDetailStateCopyWith<$Res> {
  _$TravelDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? facilites = null,
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
      facilites: null == facilites
          ? _value.facilites
          : facilites // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelDetailStateImplCopyWith<$Res>
    implements $TravelDetailStateCopyWith<$Res> {
  factory _$$TravelDetailStateImplCopyWith(_$TravelDetailStateImpl value,
          $Res Function(_$TravelDetailStateImpl) then) =
      __$$TravelDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> facilites});
}

/// @nodoc
class __$$TravelDetailStateImplCopyWithImpl<$Res>
    extends _$TravelDetailStateCopyWithImpl<$Res, _$TravelDetailStateImpl>
    implements _$$TravelDetailStateImplCopyWith<$Res> {
  __$$TravelDetailStateImplCopyWithImpl(_$TravelDetailStateImpl _value,
      $Res Function(_$TravelDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? facilites = null,
  }) {
    return _then(_$TravelDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      facilites: null == facilites
          ? _value.facilites
          : facilites // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$TravelDetailStateImpl implements _TravelDetailState {
  _$TravelDetailStateImpl(
      {this.counter = 0,
      this.categories = const ['About', 'Gallery', 'Review'],
      this.facilites = const [
        {"label": "3 Beds", "icon": Icons.bed},
        {"label": "1 Bath", "icon": Icons.bathtub},
        {"label": "1.848", "icon": Icons.square_foot}
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;
  @override
  @JsonKey()
  List<dynamic> facilites;

  @override
  String toString() {
    return 'TravelDetailState(counter: $counter, categories: $categories, facilites: $facilites)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDetailStateImplCopyWith<_$TravelDetailStateImpl> get copyWith =>
      __$$TravelDetailStateImplCopyWithImpl<_$TravelDetailStateImpl>(
          this, _$identity);
}

abstract class _TravelDetailState implements TravelDetailState {
  factory _TravelDetailState(
      {int counter,
      List<dynamic> categories,
      List<dynamic> facilites}) = _$TravelDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  List<dynamic> get facilites;
  set facilites(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$TravelDetailStateImplCopyWith<_$TravelDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
