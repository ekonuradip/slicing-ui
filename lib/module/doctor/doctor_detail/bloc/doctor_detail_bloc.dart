
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/doctor_detail_event.dart';
import '../state/doctor_detail_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class DoctorDetailBloc extends Bloc<DoctorDetailEvent, DoctorDetailState> implements IBlocBase {
  DoctorDetailBloc() : super(DoctorDetailState()) {
    on<DoctorDetailIncrementEvent>((event, emit) {
      
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
    