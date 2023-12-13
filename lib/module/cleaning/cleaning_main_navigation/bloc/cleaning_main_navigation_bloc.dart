import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/cleaning_main_navigation_event.dart';
import '../state/cleaning_main_navigation_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class CleaningMainNavigationBloc
    extends Bloc<CleaningMainNavigationEvent, CleaningMainNavigationState>
    implements IBlocBase {
  CleaningMainNavigationBloc() : super(CleaningMainNavigationState()) {
    on<CleaningMainNavigationIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<CleaningMainNavigationUpdateIndexEvent>((event, emit) {
      state.selectedIndex = event.selectedIndex;
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
