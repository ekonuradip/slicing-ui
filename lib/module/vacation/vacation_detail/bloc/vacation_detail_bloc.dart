
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/vacation_detail_event.dart';
import '../state/vacation_detail_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class VacationDetailBloc extends Bloc<VacationDetailEvent, VacationDetailState> implements IBlocBase {
  VacationDetailBloc() : super(VacationDetailState()) {
    on<VacationDetailIncrementEvent>((event, emit) {
      
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
    