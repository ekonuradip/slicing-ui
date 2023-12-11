import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'coffeedashboard_state.freezed.dart';

@unfreezed
class CoffeedashboardState with _$CoffeedashboardState {
  factory CoffeedashboardState({
    @Default(0) int counter,
    @Default([
      'Cappuccino',
      'Latte',
      'Espresso',
      'Americano',
      'Macchiato',
      'Mocha',
      'Affogato',
      'Flat White',
    ])
    List categories,
    @Default([
      {"icon": Icons.home},
      {"icon": Icons.favorite},
      {"icon": Icons.shopping_bag},
      {"icon": Icons.person},
    ])
    List icon,
  }) = _CoffeedashboardState;
}
