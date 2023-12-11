import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cleaning_dashboard_bloc.dart';
import '../event/cleaning_dashboard_event.dart';
import '../state/cleaning_dashboard_state.dart';
import 'package:get_it/get_it.dart';

class CleaningDashboardView extends StatefulWidget {
  const CleaningDashboardView({Key? key}) : super(key: key);

  @override
  State<CleaningDashboardView> createState() => _CleaningDashboardViewState();
}

class _CleaningDashboardViewState extends State<CleaningDashboardView> {
  CleaningDashboardBloc bloc = CleaningDashboardBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CleaningDashboardBloc>()) {
      GetIt.I.unregister<CleaningDashboardBloc>();
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
      child: BlocListener<CleaningDashboardBloc, CleaningDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<CleaningDashboardBloc, CleaningDashboardState>(
          builder: (context, state) {
            final bloc = context.read<CleaningDashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CleaningDashboardBloc bloc,
    CleaningDashboardState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                color: Color(0xff4c9782),
                borderRadius: BorderRadius.all(
                  Radius.circular(24.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_rounded,
                                  size: 16.0,
                                  color: Colors.yellow,
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "New York, USA",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 2.0,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: const Icon(
                                Icons.notifications,
                                size: 28.0,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 12,
                              child: const Icon(
                                Icons.circle,
                                size: 6.0,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[400]!,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                            Expanded(
                              child: TextFormField(
                                initialValue: null,
                                decoration: const InputDecoration.collapsed(
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  hintText: "Search",
                                ),
                                onFieldSubmitted: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.settings,
                          size: 24.0,
                          color: Color(0xff4c9782),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
