
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/cofeeintro_event.dart';
import '../state/cofeeintro_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class CofeeintroBloc extends Bloc<CofeeintroEvent, CofeeintroState> implements IBlocBase {
  CofeeintroBloc() : super(CofeeintroState()) {
    on<CofeeintroIncrementEvent>((event, emit) {
      
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
    