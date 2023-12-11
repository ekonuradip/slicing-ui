
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/vacation_main_navigation_event.dart';
import '../state/vacation_main_navigation_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class VacationMainNavigationBloc extends Bloc<VacationMainNavigationEvent, VacationMainNavigationState> implements IBlocBase {
  VacationMainNavigationBloc() : super(VacationMainNavigationState()) {
    on<VacationMainNavigationIncrementEvent>((event, emit) {
      
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
    