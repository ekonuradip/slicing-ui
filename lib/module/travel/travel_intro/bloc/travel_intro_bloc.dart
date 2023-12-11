
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/travel_intro_event.dart';
import '../state/travel_intro_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class TravelIntroBloc extends Bloc<TravelIntroEvent, TravelIntroState> implements IBlocBase {
  TravelIntroBloc() : super(TravelIntroState()) {
    on<TravelIntroIncrementEvent>((event, emit) {
      
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
    