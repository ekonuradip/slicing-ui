
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/vacation_dashboard_event.dart';
import '../state/vacation_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class VacationDashboardBloc extends Bloc<VacationDashboardEvent, VacationDashboardState> implements IBlocBase {
  VacationDashboardBloc() : super(VacationDashboardState()) {
    on<VacationDashboardIncrementEvent>((event, emit) {
      
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
    