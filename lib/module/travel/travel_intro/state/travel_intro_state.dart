
import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_intro_state.freezed.dart';

@unfreezed
class TravelIntroState with _$TravelIntroState {
  factory TravelIntroState({
    @Default(0) int counter,
  }) = _TravelIntroState;
}
    
    