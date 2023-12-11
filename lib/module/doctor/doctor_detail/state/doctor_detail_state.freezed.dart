// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get specialities => throw _privateConstructorUsedError;
  set specialities(List<dynamic> value) => throw _privateConstructorUsedError;
  List<dynamic> get schedule => throw _privateConstructorUsedError;
  set schedule(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorDetailStateCopyWith<DoctorDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorDetailStateCopyWith<$Res> {
  factory $DoctorDetailStateCopyWith(
          DoctorDetailState value, $Res Function(DoctorDetailState) then) =
      _$DoctorDetailStateCopyWithImpl<$Res, DoctorDetailState>;
  @useResult
  $Res call({int counter, List<dynamic> specialities, List<dynamic> schedule});
}

/// @nodoc
class _$DoctorDetailStateCopyWithImpl<$Res, $Val extends DoctorDetailState>
    implements $DoctorDetailStateCopyWith<$Res> {
  _$DoctorDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? specialities = null,
    Object? schedule = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      specialities: null == specialities
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorDetailStateImplCopyWith<$Res>
    implements $DoctorDetailStateCopyWith<$Res> {
  factory _$$DoctorDetailStateImplCopyWith(_$DoctorDetailStateImpl value,
          $Res Function(_$DoctorDetailStateImpl) then) =
      __$$DoctorDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> specialities, List<dynamic> schedule});
}

/// @nodoc
class __$$DoctorDetailStateImplCopyWithImpl<$Res>
    extends _$DoctorDetailStateCopyWithImpl<$Res, _$DoctorDetailStateImpl>
    implements _$$DoctorDetailStateImplCopyWith<$Res> {
  __$$DoctorDetailStateImplCopyWithImpl(_$DoctorDetailStateImpl _value,
      $Res Function(_$DoctorDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? specialities = null,
    Object? schedule = null,
  }) {
    return _then(_$DoctorDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      specialities: null == specialities
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$DoctorDetailStateImpl implements _DoctorDetailState {
  _$DoctorDetailStateImpl(
      {this.counter = 0,
      this.specialities = const [
        {"icon": Icons.group, "label": "7500", "label2": "Patient"},
        {"icon": Icons.work_rounded, "label": "10+", "label2": "Years Exp"},
        {"icon": Icons.star, "label": "4.9+", "label2": "Rating"},
        {"icon": Icons.chat, "label": "4,956", "label2": "Review"}
      ],
      this.schedule = const [
        {"day": "Monday", "time": "00:00 - 00:00"},
        {"day": "Tuesday", "time": "00:00 - 00:00"},
        {"day": "Wednesday", "time": "00:00 - 00:00"},
        {"day": "Thursday", "time": "00:00 - 00:00"},
        {"day": "Friday", "time": "00:00 - 00:00"},
        {"day": "Saturday", "time": "00:00 - 00:00"}
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> specialities;
  @override
  @JsonKey()
  List<dynamic> schedule;

  @override
  String toString() {
    return 'DoctorDetailState(counter: $counter, specialities: $specialities, schedule: $schedule)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorDetailStateImplCopyWith<_$DoctorDetailStateImpl> get copyWith =>
      __$$DoctorDetailStateImplCopyWithImpl<_$DoctorDetailStateImpl>(
          this, _$identity);
}

abstract class _DoctorDetailState implements DoctorDetailState {
  factory _DoctorDetailState(
      {int counter,
      List<dynamic> specialities,
      List<dynamic> schedule}) = _$DoctorDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get specialities;
  set specialities(List<dynamic> value);
  @override
  List<dynamic> get schedule;
  set schedule(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$DoctorDetailStateImplCopyWith<_$DoctorDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
