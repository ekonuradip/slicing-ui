import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/classroom/classroom_theme/classroom_theme.dart';
import 'package:hyper_ui/module/login/view/login_view.dart';
import 'package:hyper_ui/state_util.dart';
import '../bloc/classroom_dashboard_bloc.dart';
import '../event/classroom_dashboard_event.dart';
import '../state/classroom_dashboard_state.dart';
import 'package:get_it/get_it.dart';

class ClassroomDashboardView extends StatefulWidget {
  const ClassroomDashboardView({Key? key}) : super(key: key);

  @override
  State<ClassroomDashboardView> createState() => _ClassroomDashboardViewState();
}

class _ClassroomDashboardViewState extends State<ClassroomDashboardView> {
  ClassroomDashboardBloc bloc = ClassroomDashboardBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ClassroomDashboardBloc>()) {
      GetIt.I.unregister<ClassroomDashboardBloc>();
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
      child: BlocListener<ClassroomDashboardBloc, ClassroomDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<ClassroomDashboardBloc, ClassroomDashboardState>(
          builder: (context, state) {
            final bloc = context.read<ClassroomDashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ClassroomDashboardBloc bloc,
    ClassroomDashboardState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: classroomPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, John",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                Text(
                                  "Let's start learning!",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: Colors.white.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  const Icon(
                                    Icons.notifications,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                  Positioned(
                                    top: 4,
                                    right: 4,
                                    child: const Icon(
                                      Icons.circle,
                                      size: 6.0,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.developer_board,
                            size: 24.0,
                            color: classroomPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: [
                        for (var i in [1, 2, 3, 4])
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.to(LoginView());
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[100],
                                    child: Icon(
                                      Icons.favorite,
                                      color: classroomPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    "text",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular Course",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.yellow,
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
                                Get.to(ClassroomDetailView());
                              },
                              child: Container(
                                width: 250,
                                margin: const EdgeInsets.only(
                                  right: 10.0,
                                ),
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
                                      height: 140.0,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(4.0),
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(4.0),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 16.0,
                                                ),
                                                const SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "4.8",
                                                  style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(4.0),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.bookmark_outlined,
                                                  color: classroomPrimaryColor,
                                                  size: 16.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      "Design Thinking Fundamental",
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
                                        const Icon(
                                          Icons.person,
                                          size: 16.0,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          width: 6.0,
                                        ),
                                        Text(
                                          "Robert Green",
                                          style: TextStyle(
                                            fontSize: 10.0,
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
                                          "\$180",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: classroomPrimaryColor),
                                        ),
                                        const SizedBox(
                                          width: 6.0,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.yellow.withOpacity(0.3),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12.0),
                                            ),
                                          ),
                                          child: Text(
                                            "Best Seller",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.yellow[800]),
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
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Top Mentor",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: [
                        for (var i in [1, 2, 3, 4])
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                right: 10.0,
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                                ),
                              ),
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
    );
  }
}
