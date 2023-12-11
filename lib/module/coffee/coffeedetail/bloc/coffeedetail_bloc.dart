
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/coffeedetail_event.dart';
import '../state/coffeedetail_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class CoffeedetailBloc extends Bloc<CoffeedetailEvent, CoffeedetailState> implements IBlocBase {
  CoffeedetailBloc() : super(CoffeedetailState()) {
    on<CoffeedetailIncrementEvent>((event, emit) {
      
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
    