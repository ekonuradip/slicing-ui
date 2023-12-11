import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vacation_dashboard_state.freezed.dart';

@unfreezed
class VacationDashboardState with _$VacationDashboardState {
  factory VacationDashboardState({
    @Default(0) int counter,
    @Default([
      {"icon": Icons.abc, "label": "Lakes"},
      {"icon": Icons.abc, "label": "Sea"},
      {"icon": Icons.abc, "label": "Mountain"},
      {"icon": Icons.abc, "label": "Waterfall"},
      {"icon": Icons.abc, "label": "Waterfall"},
      {"icon": Icons.abc, "label": "Waterfall"},
      {"icon": Icons.abc, "label": "Waterfall"},
    ])
    List categories,
  }) = _VacationDashboardState;
}
