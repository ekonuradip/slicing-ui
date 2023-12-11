import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/cofeeintro_bloc.dart';
import '../event/cofeeintro_event.dart';
import '../state/cofeeintro_state.dart';
import 'package:get_it/get_it.dart';

class CofeeintroView extends StatefulWidget {
  const CofeeintroView({Key? key}) : super(key: key);

  @override
  State<CofeeintroView> createState() => _CofeeintroViewState();
}

class _CofeeintroViewState extends State<CofeeintroView> {
  CofeeintroBloc bloc = CofeeintroBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CofeeintroBloc>())
      GetIt.I.unregister<CofeeintroBloc>();
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
      child: BlocListener<CofeeintroBloc, CofeeintroState>(
        listener: (context, state) {},
        child: BlocBuilder<CofeeintroBloc, CofeeintroState>(
          builder: (context, state) {
            final bloc = context.read<CofeeintroBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CofeeintroBloc bloc,
    CofeeintroState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                child: Text(
                  "Coffee So Good, Your \nBuds will love it",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff234141)),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "The best Grain, The finest roast, the \nmost powerful flavor",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.circle,
                      size: 20.0, color: Color(0xff234141)),
                  const SizedBox(
                    width: 4.0,
                  ),
                  const Icon(Icons.circle_outlined,
                      size: 20.0, color: Color(0xff234141)),
                  const SizedBox(
                    width: 4.0,
                  ),
                  const Icon(Icons.circle_outlined,
                      size: 20.0, color: Color(0xff234141)),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {
                  Get.to(CoffeedashboardView());
                },
                child: Center(
                  child: CircleAvatar(
                    radius: 32.0,
                    backgroundColor: Color(0xff234141),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
