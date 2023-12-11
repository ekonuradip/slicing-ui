
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/vacation_intro_bloc.dart';
import '../event/vacation_intro_event.dart';
import '../state/vacation_intro_state.dart';
import 'package:get_it/get_it.dart';

class VacationIntroView extends StatefulWidget {
  const VacationIntroView({Key? key}) : super(key: key);

  @override
  State<VacationIntroView> createState() => _VacationIntroViewState();
}

class _VacationIntroViewState extends State<VacationIntroView> {
  VacationIntroBloc bloc = VacationIntroBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<VacationIntroBloc>()) {
      GetIt.I.unregister<VacationIntroBloc>();
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
      child: BlocListener<VacationIntroBloc, VacationIntroState>(
        listener: (context, state) {},
        child: BlocBuilder<VacationIntroBloc, VacationIntroState>(
          builder: (context, state) {
            final bloc = context.read<VacationIntroBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView( 
      BuildContext context,
      VacationIntroBloc bloc,
      VacationIntroState state,
    ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VacationIntro'),
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
            onPressed: () => bloc.add(VacationIntroIncrementEvent()),
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
    