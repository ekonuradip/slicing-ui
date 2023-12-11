
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/vacation_main_navigation_bloc.dart';
import '../event/vacation_main_navigation_event.dart';
import '../state/vacation_main_navigation_state.dart';
import 'package:get_it/get_it.dart';

class VacationMainNavigationView extends StatefulWidget {
  const VacationMainNavigationView({Key? key}) : super(key: key);

  @override
  State<VacationMainNavigationView> createState() => _VacationMainNavigationViewState();
}

class _VacationMainNavigationViewState extends State<VacationMainNavigationView> {
  VacationMainNavigationBloc bloc = VacationMainNavigationBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<VacationMainNavigationBloc>()) {
      GetIt.I.unregister<VacationMainNavigationBloc>();
    }
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<VacationMainNavigationBloc, VacationMainNavigationState>(
        listener: (context, state) {},
        child: BlocBuilder<VacationMainNavigationBloc, VacationMainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<VacationMainNavigationBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView( 
      BuildContext context,
      VacationMainNavigationBloc bloc,
      VacationMainNavigationState state,
    ) {
    return Scaffold(
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
        ],
      ),
    );
  }
}    
    