
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/cleaning_dashboard_event.dart';
import '../state/cleaning_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class CleaningDashboardBloc extends Bloc<CleaningDashboardEvent, CleaningDashboardState> implements IBlocBase {
  CleaningDashboardBloc() : super(CleaningDashboardState()) {
    on<CleaningDashboardIncrementEvent>((event, emit) {
      
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
    