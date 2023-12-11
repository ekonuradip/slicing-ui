
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/vacation_detail_bloc.dart';
import '../event/vacation_detail_event.dart';
import '../state/vacation_detail_state.dart';
import 'package:get_it/get_it.dart';

class VacationDetailView extends StatefulWidget {
  const VacationDetailView({Key? key}) : super(key: key);

  @override
  State<VacationDetailView> createState() => _VacationDetailViewState();
}

class _VacationDetailViewState extends State<VacationDetailView> {
  VacationDetailBloc bloc = VacationDetailBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<VacationDetailBloc>()) {
      GetIt.I.unregister<VacationDetailBloc>();
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
      child: BlocListener<VacationDetailBloc, VacationDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<VacationDetailBloc, VacationDetailState>(
          builder: (context, state) {
            final bloc = context.read<VacationDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView( 
      BuildContext context,
      VacationDetailBloc bloc,
      VacationDetailState state,
    ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VacationDetail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(VacationDetailIncrementEvent()),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}    
    