import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/travel_dashboard_bloc.dart';
import '../event/travel_dashboard_event.dart';
import '../state/travel_dashboard_state.dart';
import 'package:get_it/get_it.dart';

class TravelDashboardView extends StatefulWidget {
  const TravelDashboardView({Key? key}) : super(key: key);

  @override
  State<TravelDashboardView> createState() => _TravelDashboardViewState();
}

class _TravelDashboardViewState extends State<TravelDashboardView> {
  TravelDashboardBloc bloc = TravelDashboardBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<TravelDashboardBloc>()) {
      GetIt.I.unregister<TravelDashboardBloc>();
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
      child: BlocListener<TravelDashboardBloc, TravelDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<TravelDashboardBloc, TravelDashboardState>(
          builder: (context, state) {
            final bloc = context.read<TravelDashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    TravelDashboardBloc bloc,
    TravelDashboardState state,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
                              fontSize: 12.0, color: Colors.grey[700]),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 16.0,
                              color: Color(0xff6151fc),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "New York, USA",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              size: 16.0,
                            ),
                          ],
                        )
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
                        top: 2,
                        right: 6,
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
                  const SizedBox(
                    width: 6.0,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xff6151fc),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.settings_outlined,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: List.generate(state.categories.length, (index) {
                  var item = state.categories[index];
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            item["icon"],
                            size: 36,
                            color: Color(0xff6151fc),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          item['label'],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Text(
                    "Reccomended Property",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 12.0, color: Color(0xff6151fc)),
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
                    for (var i in [1, 2, 3, 4])
                      InkWell(
                        onTap: () {
                          Get.to(TravelDetailView());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                            right: 12.0,
                          ),
                          width: 260,
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey[200]!,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 160.0,
                                width: 250,
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
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.white.withOpacity(0.4),
                                        child: const Icon(
                                          Icons.favorite,
                                          size: 24.0,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xff6151fc).withOpacity(0.1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                    child: Text(
                                      "Apartment",
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: Color(0xff6151fc)),
                                    ),
                                  ),
                                  Spacer(),
                                  const Icon(
                                    Icons.star,
                                    size: 16.0,
                                    color: Colors.orange,
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Woodland Apartments",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "New York, USA",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$1500",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff6151fc)),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "/month",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                    "Nearby Property",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 12.0, color: Color(0xff6151fc)),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[200]!,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120.0,
                      width: 120,
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
                      child: Stack(
                        children: [
                          Positioned(
                            top: 8,
                            right: 8,
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.4),
                              child: const Icon(
                                Icons.favorite,
                                size: 24.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff6151fc).withOpacity(0.1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                                child: Text(
                                  "Villa",
                                  style: TextStyle(
                                      fontSize: 10.0, color: Color(0xff6151fc)),
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.star,
                                size: 16.0,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "Woodland Apartments",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 16.0,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "New York, USA",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$1500",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff6151fc)),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "/month",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
            children: List.generate(state.bottomNavbar.length, (index) {
          var item = state.bottomNavbar[index];
          return Expanded(
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: Column(
                  children: [
                    Icon(
                      item["icon"],
                      size: 24.0,
                      color: Color(0xff6151fc),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      item["label"],
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        })),
      ),
    );
  }
}
