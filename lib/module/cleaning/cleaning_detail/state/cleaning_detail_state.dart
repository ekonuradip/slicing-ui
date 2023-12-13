
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cleaning_detail_state.freezed.dart';

@unfreezed
class CleaningDetailState with _$CleaningDetailState {
  factory CleaningDetailState({
    @Default(0) int counter,
    @Default(0) int selectedIndex,
    @Default(['About', 'Gallery', 'Review']) List categories,
    
  }) = _CleaningDetailState;
}
    
    