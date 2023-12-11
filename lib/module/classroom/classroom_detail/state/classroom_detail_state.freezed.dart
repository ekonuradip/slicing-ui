// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassroomDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;
  List<dynamic> get infoItem => throw _privateConstructorUsedError;
  set infoItem(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassroomDetailStateCopyWith<ClassroomDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomDetailStateCopyWith<$Res> {
  factory $ClassroomDetailStateCopyWith(ClassroomDetailState value,
          $Res Function(ClassroomDetailState) then) =
      _$ClassroomDetailStateCopyWithImpl<$Res, ClassroomDetailState>;
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> infoItem});
}

/// @nodoc
class _$ClassroomDetailStateCopyWithImpl<$Res,
        $Val extends ClassroomDetailState>
    implements $ClassroomDetailStateCopyWith<$Res> {
  _$ClassroomDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? infoItem = null,
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
      infoItem: null == infoItem
          ? _value.infoItem
          : infoItem // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomDetailStateImplCopyWith<$Res>
    implements $ClassroomDetailStateCopyWith<$Res> {
  factory _$$ClassroomDetailStateImplCopyWith(_$ClassroomDetailStateImpl value,
          $Res Function(_$ClassroomDetailStateImpl) then) =
      __$$ClassroomDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> infoItem});
}

/// @nodoc
class __$$ClassroomDetailStateImplCopyWithImpl<$Res>
    extends _$ClassroomDetailStateCopyWithImpl<$Res, _$ClassroomDetailStateImpl>
    implements _$$ClassroomDetailStateImplCopyWith<$Res> {
  __$$ClassroomDetailStateImplCopyWithImpl(_$ClassroomDetailStateImpl _value,
      $Res Function(_$ClassroomDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? infoItem = null,
  }) {
    return _then(_$ClassroomDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      infoItem: null == infoItem
          ? _value.infoItem
          : infoItem // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$ClassroomDetailStateImpl implements _ClassroomDetailState {
  _$ClassroomDetailStateImpl(
      {this.counter = 0,
      this.categories = const [
        {"label": "Robert Green", "icon": Icons.person},
        {"label": "32 Lessons", "icon": Icons.play_circle},
        {"label": "Certificate", "icon": Icons.agriculture_outlined}
      ],
      this.infoItem = const [
        {"label": "About"},
        {"label": "lessons"},
        {"label": "Reviews"}
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;
  @override
  @JsonKey()
  List<dynamic> infoItem;

  @override
  String toString() {
    return 'ClassroomDetailState(counter: $counter, categories: $categories, infoItem: $infoItem)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomDetailStateImplCopyWith<_$ClassroomDetailStateImpl>
      get copyWith =>
          __$$ClassroomDetailStateImplCopyWithImpl<_$ClassroomDetailStateImpl>(
              this, _$identity);
}

abstract class _ClassroomDetailState implements ClassroomDetailState {
  factory _ClassroomDetailState(
      {int counter,
      List<dynamic> categories,
      List<dynamic> infoItem}) = _$ClassroomDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  List<dynamic> get infoItem;
  set infoItem(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$ClassroomDetailStateImplCopyWith<_$ClassroomDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
