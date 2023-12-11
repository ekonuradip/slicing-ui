
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/travel_dashboard_event.dart';
import '../state/travel_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class TravelDashboardBloc extends Bloc<TravelDashboardEvent, TravelDashboardState> implements IBlocBase {
  TravelDashboardBloc() : super(TravelDashboardState()) {
    on<TravelDashboardIncrementEvent>((event, emit) {
      
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
    