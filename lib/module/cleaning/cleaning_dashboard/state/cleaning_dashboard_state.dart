
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cleaning_dashboard_state.freezed.dart';

@unfreezed
class CleaningDashboardState with _$CleaningDashboardState {
  factory CleaningDashboardState({
    @Default(0) int counter,
  }) = _CleaningDashboardState;
}
    
    