
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vacation_detail_state.freezed.dart';

@unfreezed
class VacationDetailState with _$VacationDetailState {
  factory VacationDetailState({
    @Default(0) int counter,
  }) = _VacationDetailState;
}
    
    