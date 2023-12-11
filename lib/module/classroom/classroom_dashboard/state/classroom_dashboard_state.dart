
import 'package:freezed_annotation/freezed_annotation.dart';
part 'classroom_dashboard_state.freezed.dart';

@unfreezed
class ClassroomDashboardState with _$ClassroomDashboardState {
  factory ClassroomDashboardState({
    @Default(0) int counter,
  }) = _ClassroomDashboardState;
}
    
    