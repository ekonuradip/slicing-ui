// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaning_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CleaningDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  set selectedIndex(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CleaningDetailStateCopyWith<CleaningDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleaningDetailStateCopyWith<$Res> {
  factory $CleaningDetailStateCopyWith(
          CleaningDetailState value, $Res Function(CleaningDetailState) then) =
      _$CleaningDetailStateCopyWithImpl<$Res, CleaningDetailState>;
  @useResult
  $Res call({int counter, int selectedIndex, List<dynamic> categories});
}

/// @nodoc
class _$CleaningDetailStateCopyWithImpl<$Res, $Val extends CleaningDetailState>
    implements $CleaningDetailStateCopyWith<$Res> {
  _$CleaningDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? selectedIndex = null,
    Object? categories = null,
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
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CleaningDetailStateImplCopyWith<$Res>
    implements $CleaningDetailStateCopyWith<$Res> {
  factory _$$CleaningDetailStateImplCopyWith(_$CleaningDetailStateImpl value,
          $Res Function(_$CleaningDetailStateImpl) then) =
      __$$CleaningDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, int selectedIndex, List<dynamic> categories});
}

/// @nodoc
class __$$CleaningDetailStateImplCopyWithImpl<$Res>
    extends _$CleaningDetailStateCopyWithImpl<$Res, _$CleaningDetailStateImpl>
    implements _$$CleaningDetailStateImplCopyWith<$Res> {
  __$$CleaningDetailStateImplCopyWithImpl(_$CleaningDetailStateImpl _value,
      $Res Function(_$CleaningDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? selectedIndex = null,
    Object? categories = null,
  }) {
    return _then(_$CleaningDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CleaningDetailStateImpl implements _CleaningDetailState {
  _$CleaningDetailStateImpl(
      {this.counter = 0,
      this.selectedIndex = 0,
      this.categories = const ['About', 'Gallery', 'Review']});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  int selectedIndex;
  @override
  @JsonKey()
  List<dynamic> categories;

  @override
  String toString() {
    return 'CleaningDetailState(counter: $counter, selectedIndex: $selectedIndex, categories: $categories)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CleaningDetailStateImplCopyWith<_$CleaningDetailStateImpl> get copyWith =>
      __$$CleaningDetailStateImplCopyWithImpl<_$CleaningDetailStateImpl>(
          this, _$identity);
}

abstract class _CleaningDetailState implements CleaningDetailState {
  factory _CleaningDetailState(
      {int counter,
      int selectedIndex,
      List<dynamic> categories}) = _$CleaningDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  int get selectedIndex;
  set selectedIndex(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$CleaningDetailStateImplCopyWith<_$CleaningDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
