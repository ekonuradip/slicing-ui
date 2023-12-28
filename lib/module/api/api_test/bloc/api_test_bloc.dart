
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/api_test_event.dart';
import '../state/api_test_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiTestBloc extends Bloc<ApiTestEvent, ApiTestState> implements IBlocBase {
  ApiTestBloc() : super(ApiTestState()) {
    on<ApiTestIncrementEvent>((event, emit) {
      
        state.counter++;
        emit(state.copyWith());
      
    });
  }

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
}
    