import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'coffeedetail_state.freezed.dart';

@unfreezed
class CoffeedetailState with _$CoffeedetailState {
  factory CoffeedetailState({
    @Default(0) int counter,
    @Default([
      {"icon": Icons.coffee, "label": "Coffee"},
      {"icon": Icons.local_drink, "label": "Sippy Cups"},
      {"icon": Icons.local_pizza, "label": "Donut"},
      {"icon": Icons.cookie, "label": "Cookies"},
    ])
    List iconText,
  }) = _CoffeedetailState;
}
