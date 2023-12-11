// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffeedetail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoffeedetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get iconText => throw _privateConstructorUsedError;
  set iconText(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoffeedetailStateCopyWith<CoffeedetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeedetailStateCopyWith<$Res> {
  factory $CoffeedetailStateCopyWith(
          CoffeedetailState value, $Res Function(CoffeedetailState) then) =
      _$CoffeedetailStateCopyWithImpl<$Res, CoffeedetailState>;
  @useResult
  $Res call({int counter, List<dynamic> iconText});
}

/// @nodoc
class _$CoffeedetailStateCopyWithImpl<$Res, $Val extends CoffeedetailState>
    implements $CoffeedetailStateCopyWith<$Res> {
  _$CoffeedetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? iconText = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      iconText: null == iconText
          ? _value.iconText
          : iconText // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoffeedetailStateImplCopyWith<$Res>
    implements $CoffeedetailStateCopyWith<$Res> {
  factory _$$CoffeedetailStateImplCopyWith(_$CoffeedetailStateImpl value,
          $Res Function(_$CoffeedetailStateImpl) then) =
      __$$CoffeedetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> iconText});
}

/// @nodoc
class __$$CoffeedetailStateImplCopyWithImpl<$Res>
    extends _$CoffeedetailStateCopyWithImpl<$Res, _$CoffeedetailStateImpl>
    implements _$$CoffeedetailStateImplCopyWith<$Res> {
  __$$CoffeedetailStateImplCopyWithImpl(_$CoffeedetailStateImpl _value,
      $Res Function(_$CoffeedetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? iconText = null,
  }) {
    return _then(_$CoffeedetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      iconText: null == iconText
          ? _value.iconText
          : iconText // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CoffeedetailStateImpl implements _CoffeedetailState {
  _$CoffeedetailStateImpl(
      {this.counter = 0,
      this.iconText = const [
        {"icon": Icons.coffee, "label": "Coffee"},
        {"icon": Icons.local_drink, "label": "Sippy Cups"},
        {"icon": Icons.local_pizza, "label": "Donut"},
        {"icon": Icons.cookie, "label": "Cookies"}
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> iconText;

  @override
  String toString() {
    return 'CoffeedetailState(counter: $counter, iconText: $iconText)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeedetailStateImplCopyWith<_$CoffeedetailStateImpl> get copyWith =>
      __$$CoffeedetailStateImplCopyWithImpl<_$CoffeedetailStateImpl>(
          this, _$identity);
}

abstract class _CoffeedetailState implements CoffeedetailState {
  factory _CoffeedetailState({int counter, List<dynamic> iconText}) =
      _$CoffeedetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get iconText;
  set iconText(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$CoffeedetailStateImplCopyWith<_$CoffeedetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
