import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/coffeedashboard_bloc.dart';
import '../event/coffeedashboard_event.dart';
import '../state/coffeedashboard_state.dart';
import 'package:get_it/get_it.dart';

class CoffeedashboardView extends StatefulWidget {
  const CoffeedashboardView({Key? key}) : super(key: key);

  @override
  State<CoffeedashboardView> createState() => _CoffeedashboardViewState();
}

class _CoffeedashboardViewState extends State<CoffeedashboardView> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  CoffeedashboardBloc bloc = CoffeedashboardBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CoffeedashboardBloc>())
      GetIt.I.unregister<CoffeedashboardBloc>();
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
      child: BlocListener<CoffeedashboardBloc, CoffeedashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<CoffeedashboardBloc, CoffeedashboardState>(
          builder: (context, state) {
            final bloc = context.read<CoffeedashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CoffeedashboardBloc bloc,
    CoffeedashboardState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
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
                          Row(
                            children: [
                              Text(
                                "Good Morning",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                MdiIcons.handWaveOutline,
                                size: 16.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Eko Nur Adi Prasetyo",
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff234141)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 4.0,
                      ),
                      child: Stack(
                        children: [
                          const Icon(Icons.notifications,
                              size: 28.0, color: Color(0xff234141)),
                          Positioned(
                            right: 6,
                            top: 4,
                            child: const Icon(
                              Icons.circle,
                              size: 6.0,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12.0,
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
                            child: Icon(Icons.search),
                          ),
                          Expanded(
                            child: TextFormField(
                              initialValue: null,
                              decoration: InputDecoration.collapsed(
                                filled: true,
                                fillColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                ),
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
                        color: Color(0xff234141),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Icon(
                        MdiIcons.menu,
                        size: 32.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(state.categories.length, (index) {
                      var item = state.categories[index];
                      bool selected = selectedIndex == index;
                      return InkWell(
                        onTap: () => updateIndex(index),
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                "$item",
                                style: TextStyle(
                                    color: selected
                                        ? Color(0xff234141)
                                        : Colors.grey),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Icon(Icons.circle,
                                  size: 6.0,
                                  color: selected
                                      ? Color(0xff234141)
                                      : Colors.transparent),
                            ],
                          )),
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
                      "Near by Place",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234141)),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
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
                            Get.to(CoffeedetailView());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.only(
                              right: 10.0,
                            ),
                            width: 250,
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
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 120.0,
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
                                    Positioned(
                                      right: 8,
                                      top: 8,
                                      child: const Icon(
                                        Icons.favorite,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Tony's Coffee",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "1.5 km",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w200,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      size: 14.0,
                                      color: Colors.yellow,
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      "4.9",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      "(623 Reviews)",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ],
                                )
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
                      "Special for you",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff234141)),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                for (var i in [1, 2, 3, 4])
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    width: MediaQuery.of(context).size.width,
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
                          height: 100.0,
                          width: 100,
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
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                color: Color(0xff234141),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Text(
                                "25 % Discount",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              "Get three Ice flavoured \ncappucinos",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff234141)),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              "Offer valid till 31 Oct to 05 Nov",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey[600],
                              ),
                            ),
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
      bottomNavigationBar: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(),
        child: Row(
          children: List.generate(state.icon.length, (index) {
            var item = state.icon[index];
            bool selected = selectedIndex == index;
            return InkWell(
              onTap: () => updateIndex(index),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                    child: Column(
                  children: [
                    Icon(item["icon"],
                        size: 24.0,
                        color: selected ? Color(0xff234141) : Colors.grey),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Icon(Icons.circle,
                        size: 6.0,
                        color:
                            selected ? Color(0xff234141) : Colors.transparent),
                  ],
                )),
              ),
            );
          }),
        ),
      ),
    );
  }
}
