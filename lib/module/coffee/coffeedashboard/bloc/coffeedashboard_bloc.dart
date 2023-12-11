
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/coffeedashboard_event.dart';
import '../state/coffeedashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class CoffeedashboardBloc extends Bloc<CoffeedashboardEvent, CoffeedashboardState> implements IBlocBase {
  CoffeedashboardBloc() : super(CoffeedashboardState()) {
    on<CoffeedashboardIncrementEvent>((event, emit) {
      
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
    