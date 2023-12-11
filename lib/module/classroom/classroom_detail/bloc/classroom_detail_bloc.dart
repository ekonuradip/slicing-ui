
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/classroom_detail_event.dart';
import '../state/classroom_detail_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class ClassroomDetailBloc extends Bloc<ClassroomDetailEvent, ClassroomDetailState> implements IBlocBase {
  ClassroomDetailBloc() : super(ClassroomDetailState()) {
    on<ClassroomDetailIncrementEvent>((event, emit) {
      
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
    