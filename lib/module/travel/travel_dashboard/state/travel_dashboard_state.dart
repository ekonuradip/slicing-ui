
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_dashboard_state.freezed.dart';

@unfreezed
class TravelDashboardState with _$TravelDashboardState {
  factory TravelDashboardState({
    @Default(0) int counter,
     @Default([
      {"icon": Icons.home_filled, "label": "House"},
      {"icon": Icons.villa_sharp, "label": "Villa"},
      {"icon": Icons.apartment_sharp, "label": "Apartment"},
      {"icon": Icons.bungalow_sharp, "label": "Bungalow"},
    ])
    List categories,
     @Default([
      {"icon": Icons.home_filled, "label": "Home"},
      {"icon": Icons.location_on, "label": "Explore"},
      {"icon": Icons.favorite, "label": "Favorite"},
      {"icon": Icons.chat, "label": "Chat"},
      {"icon": Icons.person, "label": "Profile"}
    ])
    List bottomNavbar,
  }) = _TravelDashboardState;
}
    
    