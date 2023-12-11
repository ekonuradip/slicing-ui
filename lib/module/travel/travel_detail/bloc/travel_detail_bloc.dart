
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/travel_detail_event.dart';
import '../state/travel_detail_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class TravelDetailBloc extends Bloc<TravelDetailEvent, TravelDetailState> implements IBlocBase {
  TravelDetailBloc() : super(TravelDetailState()) {
    on<TravelDetailIncrementEvent>((event, emit) {
      
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
    