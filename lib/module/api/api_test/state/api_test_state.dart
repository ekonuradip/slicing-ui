
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_test_state.freezed.dart';

@unfreezed
class ApiTestState with _$ApiTestState {
  factory ApiTestState({
    @Default(0) int counter,
  }) = _ApiTestState;
}
    
    