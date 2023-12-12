import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/module/cleaning/cleaning_dashboard/view/cleaning_dashboard_view.dart';
import '../bloc/cleaning_main_navigation_bloc.dart';
import '../event/cleaning_main_navigation_event.dart';
import '../state/cleaning_main_navigation_state.dart';
import 'package:get_it/get_it.dart';

class CleaningMainNavigationView extends StatefulWidget {
  const CleaningMainNavigationView({Key? key}) : super(key: key);

  @override
  State<CleaningMainNavigationView> createState() =>
      _CleaningMainNavigationViewState();
}

class _CleaningMainNavigationViewState
    extends State<CleaningMainNavigationView> {
  CleaningMainNavigationBloc bloc = CleaningMainNavigationBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CleaningMainNavigationBloc>()) {
      GetIt.I.unregister<CleaningMainNavigationBloc>();
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
      child:
          BlocListener<CleaningMainNavigationBloc, CleaningMainNavigationState>(
        listener: (context, state) {},
        child: BlocBuilder<CleaningMainNavigationBloc,
            CleaningMainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<CleaningMainNavigationBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CleaningMainNavigationBloc bloc,
    CleaningMainNavigationState state,
  ) {
    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
    return DefaultTabController(
      length: 5,
      initialIndex: state.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: state.selectedIndex,
          children: [
            CleaningDashboardView(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.selectedIndex,
          onTap: (newIndex) => bloc.add(
              CleaningMainNavigationUpdateIndexEvent(selectedIndex: newIndex)),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on_rounded,
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
