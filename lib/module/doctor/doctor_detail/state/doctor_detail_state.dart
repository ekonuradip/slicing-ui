import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_detail_state.freezed.dart';

@unfreezed
class DoctorDetailState with _$DoctorDetailState {
  factory DoctorDetailState(
      {@Default(0) int counter,
      @Default([
        {"icon": Icons.group, "label": "7500", "label2": "Patient"},
        {"icon": Icons.work_rounded, "label": "10+", "label2": "Years Exp"},
        {"icon": Icons.star, "label": "4.9+", "label2": "Rating"},
        {"icon": Icons.chat, "label": "4,956", "label2": "Review"},
      ])
      List specialities,
      @Default([
        {"day": "Monday", "time": "00:00 - 00:00"},
        {"day": "Tuesday", "time": "00:00 - 00:00"},
        {"day": "Wednesday", "time": "00:00 - 00:00"},
        {"day": "Thursday", "time": "00:00 - 00:00"},
        {"day": "Friday", "time": "00:00 - 00:00"},
        {"day": "Saturday", "time": "00:00 - 00:00"},
      ])
      List schedule}) = _DoctorDetailState;
}
