
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/cleaning_detail_event.dart';
import '../state/cleaning_detail_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class CleaningDetailBloc extends Bloc<CleaningDetailEvent, CleaningDetailState> implements IBlocBase {
  CleaningDetailBloc() : super(CleaningDetailState()) {
    on<CleaningDetailIncrementEvent>((event, emit) {
      
        state.counter++;
        emit(state.copyWith());
      
    });
    on<CleaningDetailUpdateIndexEvent>((event, emit) {
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
    