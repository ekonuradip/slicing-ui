
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/vacation_intro_event.dart';
import '../state/vacation_intro_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class VacationIntroBloc extends Bloc<VacationIntroEvent, VacationIntroState> implements IBlocBase {
  VacationIntroBloc() : super(VacationIntroState()) {
    on<VacationIntroIncrementEvent>((event, emit) {
      
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
    