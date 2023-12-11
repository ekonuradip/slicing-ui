import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_dashboard_state.freezed.dart';

@unfreezed
class DoctorDashboardState with _$DoctorDashboardState {
  factory DoctorDashboardState({
    @Default(0) int counter,
    @Default([
      {"icon": Icons.local_hospital, "label": "Dentist"},
      {"icon": Icons.local_hospital, "label": "Cardiologist"},
      {"icon": Icons.local_hospital, "label": "Orthopaelist"},
      {"icon": Icons.local_hospital, "label": "Neurologist"},
    ])
    List specialities,
    @Default([
      {"icon": Icons.home_filled, "label": "Home"},
      {"icon": Icons.location_on, "label": "Explore"},
      {"icon": Icons.date_range, "label": "Bookings"},
      {"icon": Icons.chat, "label": "Chat"},
      {"icon": Icons.person, "label": "Profile"},
    ])
    List bottomNavbar,
  }) = _DoctorDashboardState;
}
