import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/vacation_dashboard_bloc.dart';
import '../event/vacation_dashboard_event.dart';
import '../state/vacation_dashboard_state.dart';
import 'package:get_it/get_it.dart';

class VacationDashboardView extends StatefulWidget {
  const VacationDashboardView({Key? key}) : super(key: key);

  @override
  State<VacationDashboardView> createState() => _VacationDashboardViewState();
}

class _VacationDashboardViewState extends State<VacationDashboardView> {
  VacationDashboardBloc bloc = VacationDashboardBloc();
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  void initState() {
    if (GetIt.I.isRegistered<VacationDashboardBloc>()) {
      GetIt.I.unregister<VacationDashboardBloc>();
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
      child: BlocListener<VacationDashboardBloc, VacationDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<VacationDashboardBloc, VacationDashboardState>(
          builder: (context, state) {
            final bloc = context.read<VacationDashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    VacationDashboardBloc bloc,
    VacationDashboardState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 16.0,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "New York, USA",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 16.0,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        const Icon(
                          Icons.notifications,
                          size: 24.0,
                        ),
                        Positioned(
                          top: 4,
                          right: 4,
                          child: const Icon(
                            Icons.circle,
                            size: 4.0,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12.0,
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
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(LoginView());
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          color: Color(0xff4a7f77),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.settings,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xff4a7f77)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: ScrollController(),
                  child: Row(
                    children: List.generate(state.categories.length, (index) {
                      var item = state.categories[index];
                      bool selected = selectedIndex == index;
                      return Container(
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        child: Row(
                          children: [
                            if (selected) ...[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  padding: const EdgeInsets.only(
                                      left: 2, top: 2, bottom: 2, right: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color(0xff4a7f77),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xff4a7f77),
                                        child: Icon(
                                          item["icon"],
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2.0,
                                      ),
                                      Text(
                                        item["label"],
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                            if (!selected)
                              InkWell(
                                onTap: () => updateIndex(index),
                                child: Container(
                                  height: 40,
                                  padding: const EdgeInsets.only(
                                      left: 2, top: 2, bottom: 2, right: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          item["icon"],
                                          color: Color(0xff4a7f77),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Text(
                      "Top Trip",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xff4a7f77)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i in [1, 2])
                        Container(
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          padding: const EdgeInsets.all(6.0),
                          width: MediaQuery.of(context).size.width * 0.43,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 160.0,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1566371486490-560ded23b5e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dmFjYXRpb258ZW58MHx8MHx8fDA%3D",
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
                                height: 6.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Lake View",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  const Icon(
                                    Icons.star,
                                    size: 18.0,
                                    color: Colors.orange,
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 18.0,
                                    color: Colors.grey[600],
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "USA",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$40",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(
                                          0xff4a7f77,
                                        ),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "/person",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  const Icon(
                                    Icons.favorite,
                                    size: 24.0,
                                    color: Color(0xff4a7f77),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Text(
                      "Group Tour",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xff4a7f77)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 140,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Container(
                          height: 160.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1566371486490-560ded23b5e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dmFjYXRpb258ZW58MHx8MHx8fDA%3D",
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
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            "Mountains Trip",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "Travel Crew",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 24.0,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "USA",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
