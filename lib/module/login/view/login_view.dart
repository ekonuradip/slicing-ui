import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/login/widget/button_porto.dart';
import 'package:hyper_ui/state_util.dart';
import '../bloc/login_bloc.dart';
import '../event/login_event.dart';
import '../state/login_state.dart';
import 'package:get_it/get_it.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginBloc bloc = LoginBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<LoginBloc>()) GetIt.I.unregister<LoginBloc>();
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
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {},
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            final bloc = context.read<LoginBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    LoginBloc bloc,
    LoginState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Daftar Slicing UI')),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                buttonPortofolio(name: "Coffee", page: CofeeintroView()),
                const SizedBox(
                  width: 12.0,
                ),
                buttonPortofolio(name: "Travel", page: TravelIntroView()),
                const SizedBox(
                  width: 12.0,
                ),
                buttonPortofolio(
                    name: "Classroom", page: ClassroomDashboardView()),
                const SizedBox(
                  width: 12.0,
                ),
                buttonPortofolio(name: "Doctor", page: DoctorDashboardView())
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buttonPortofolio(
                    name: "Vacation", page: VacationDashboardView()),
                const SizedBox(
                  width: 12.0,
                ),
                buttonPortofolio(name: "Test", page: TravelDashboardView()),
                const SizedBox(
                  width: 12.0,
                ),
                buttonPortofolio(
                    name: "Cleaning", page: CleaningMainNavigationView())
              ],
            )
          ],
        ),
      ),
    );
  }
}
