import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_detail_state.freezed.dart';

@unfreezed
class TravelDetailState with _$TravelDetailState {
  factory TravelDetailState({
    @Default(0) int counter,
    @Default(['About', 'Gallery', 'Review']) List categories,
    @Default([
      {"label": "3 Beds", "icon" : Icons.bed}, 
      {"label": "1 Bath", "icon" : Icons.bathtub}, 
      {"label": "1.848", "icon" : Icons.square_foot}, 
    ]) List facilites,
  }) = _TravelDetailState;
}
