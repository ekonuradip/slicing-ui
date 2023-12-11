import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'classroom_detail_state.freezed.dart';

@unfreezed
class ClassroomDetailState with _$ClassroomDetailState {
  factory ClassroomDetailState({
    @Default(0) int counter,
    @Default([
      {"label": "Robert Green", "icon": Icons.person},
      {"label": "32 Lessons", "icon": Icons.play_circle},
      {"label": "Certificate", "icon": Icons.agriculture_outlined},
    ])
    List categories,
    @Default([
      {
        "label": "About",
      },
      {
        "label": "lessons",
      },
      {
        "label": "Reviews",
      },
    ])
    List infoItem,
  }) = _ClassroomDetailState;
}
