
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vacation_intro_state.freezed.dart';

@unfreezed
class VacationIntroState with _$VacationIntroState {
  factory VacationIntroState({
    @Default(0) int counter,
  }) = _VacationIntroState;
}
    
    