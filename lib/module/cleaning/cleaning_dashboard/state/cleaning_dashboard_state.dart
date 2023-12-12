import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cleaning_dashboard_state.freezed.dart';

@unfreezed
class CleaningDashboardState with _$CleaningDashboardState {
  factory CleaningDashboardState({
    @Default(0) int counter,
    @Default([
      {"icon": Icons.home, "label": "Cleaning"},
      {"icon": Icons.home_repair_service, "label": "Repairing"},
      {"icon": Icons.plumbing, "label": "Plumbing"},
      {"icon": Icons.car_repair, "label": "Shifting"},
    ])
    List categories,
  }) = _CleaningDashboardState;
}
