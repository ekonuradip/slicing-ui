import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/travel_intro_bloc.dart';
import '../event/travel_intro_event.dart';
import '../state/travel_intro_state.dart';
import 'package:get_it/get_it.dart';

class TravelIntroView extends StatefulWidget {
  const TravelIntroView({Key? key}) : super(key: key);

  @override
  State<TravelIntroView> createState() => _TravelIntroViewState();
}

class _TravelIntroViewState extends State<TravelIntroView> {
  TravelIntroBloc bloc = TravelIntroBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<TravelIntroBloc>()) {
      GetIt.I.unregister<TravelIntroBloc>();
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
      child: BlocListener<TravelIntroBloc, TravelIntroState>(
        listener: (context, state) {},
        child: BlocBuilder<TravelIntroBloc, TravelIntroState>(
          builder: (context, state) {
            final bloc = context.read<TravelIntroBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    TravelIntroBloc bloc,
    TravelIntroState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dHJhdmVsfGVufDB8fDB8fHww",
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
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Discover and Find Your \nPerfect Dream House",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "App to search and discover the most suitable \nplace for you to stay.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      backgroundColor: Color(0xff6151fc),
                    ),
                    onPressed: () {
                      Get.to(TravelDashboardView());
                    },
                    child: const Text(
                      "Let's Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff6151fc),
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6151fc)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
