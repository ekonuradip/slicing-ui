import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
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
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.78,
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
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xff4c9782),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  initialValue: null,
                                  decoration: const InputDecoration.collapsed(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      hintText: "Search",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                  onFieldSubmitted: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
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
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "#SpecialForYou",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff4c9782),
                              fontWeight: FontWeight.w100),
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
                        children: [
                          for (var i in [1, 2, 3])
                            Container(
                              height: 175.0,
                              width: MediaQuery.of(context).size.width * 0.75,
                              margin: const EdgeInsets.only(
                                right: 16.0,
                              ),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                              child: Stack(children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.black,
                                        Colors.transparent,
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(24.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Limited Time",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(
                                        "Get Special Offer",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Up to",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "40%",
                                            style: TextStyle(
                                              fontSize: 40.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "All Services Available | T&C Applied",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 4.0,
                                              horizontal: 16.0,
                                            ),
                                            height: 30,
                                            decoration: const BoxDecoration(
                                              color: Colors.yellow,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(50.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Claim",
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.circle,
                            size: 16.0, color: Color(0xff4c9782)),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.circle,
                          size: 16.0,
                          color: Colors.grey[350],
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.circle,
                          size: 16.0,
                          color: Colors.grey[350],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff4c9782),
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: List.generate(state.categories.length, (index) {
                        var item = state.categories[index];
                        return Expanded(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.grey[100],
                                child: Icon(
                                  item["icon"],
                                  color: Color(0xff4c9782),
                                  size: 32,
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                item["label"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular Services",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff4c9782),
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    SingleChildScrollView(
                      controller: ScrollController(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var i in [1, 2, 3, 4, 5])
                            InkWell(
                              onTap: () {
                                Get.to(CleaningDetailView());
                              },
                              child: Container(
                                height: 160.0,
                                width: MediaQuery.of(context).size.width * 0.65,
                                margin: const EdgeInsets.only(
                                  right: 12.0,
                                ),
                                padding: const EdgeInsets.all(12.0),
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 24.0,
                                            color: Colors.orange,
                                          ),
                                          const SizedBox(
                                            width: 8.0,
                                          ),
                                          Text(
                                            "4.8   ",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.bookmark,
                                        color: Color(0xff4c9782),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
