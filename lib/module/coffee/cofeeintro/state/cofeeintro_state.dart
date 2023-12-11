
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cofeeintro_state.freezed.dart';

@unfreezed
class CofeeintroState with _$CofeeintroState {
  factory CofeeintroState({
    @Default(0) int counter,
  }) = _CofeeintroState;
}
    
    