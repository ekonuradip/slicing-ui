
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vacation_main_navigation_state.freezed.dart';

@unfreezed
class VacationMainNavigationState with _$VacationMainNavigationState {
  factory VacationMainNavigationState({
    @Default(0) int counter,
    @Default(0) int selectedIndex,

  }) = _VacationMainNavigationState;
}
    
    