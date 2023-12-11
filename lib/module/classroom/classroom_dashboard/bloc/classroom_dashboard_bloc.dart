
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/classroom_dashboard_event.dart';
import '../state/classroom_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class ClassroomDashboardBloc extends Bloc<ClassroomDashboardEvent, ClassroomDashboardState> implements IBlocBase {
  ClassroomDashboardBloc() : super(ClassroomDashboardState()) {
    on<ClassroomDashboardIncrementEvent>((event, emit) {
      
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
    