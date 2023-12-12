
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cleaning_main_navigation_state.freezed.dart';

@unfreezed
class CleaningMainNavigationState with _$CleaningMainNavigationState {
  factory CleaningMainNavigationState({
    @Default(0) int counter,
    @Default(0) int selectedIndex,
  }) = _CleaningMainNavigationState;
}
    
    