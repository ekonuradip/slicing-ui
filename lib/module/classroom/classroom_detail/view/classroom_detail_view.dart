import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/classroom/classroom_theme/classroom_theme.dart';
import '../bloc/classroom_detail_bloc.dart';
import '../event/classroom_detail_event.dart';
import '../state/classroom_detail_state.dart';
import 'package:get_it/get_it.dart';

class ClassroomDetailView extends StatefulWidget {
  const ClassroomDetailView({Key? key}) : super(key: key);

  @override
  State<ClassroomDetailView> createState() => _ClassroomDetailViewState();
}

class _ClassroomDetailViewState extends State<ClassroomDetailView> {
  ClassroomDetailBloc bloc = ClassroomDetailBloc();
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  void initState() {
    if (GetIt.I.isRegistered<ClassroomDetailBloc>()) {
      GetIt.I.unregister<ClassroomDetailBloc>();
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
      child: BlocListener<ClassroomDetailBloc, ClassroomDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<ClassroomDetailBloc, ClassroomDetailState>(
          builder: (context, state) {
            final bloc = context.read<ClassroomDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ClassroomDetailBloc bloc,
    ClassroomDetailState state,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.all(16.0),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.play_circle,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "Course Preview",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Text(
                          "Best Seller",
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.yellow[800]),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        size: 16.0,
                        color: Colors.orange[700],
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "(365 reviews)",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(state.categories.length, (index) {
                      var item = state.categories[index];
                      return Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 12.0),
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                item["icon"],
                                size: 24.0,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                item["label"],
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: List.generate(state.infoItem.length, (index) {
                      var item = state.infoItem[index];
                      bool selected = selectedIndex == index;
                      return Expanded(
                        child: InkWell(
                          onTap: () => updateIndex(index),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    bottom: BorderSide(
                                        color: selected
                                            ? classroomPrimaryColor
                                            : Colors.grey[300]!,
                                        width: selected ? 4 : 1))),
                            child: Center(
                              child: Text(
                                item["label"],
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: selected
                                        ? classroomPrimaryColor
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "About Course",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Tutor",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28.0,
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/PGv8ZzG/me.jpg",
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Robert Green",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Design Tutor",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: classroomPrimaryColor.withOpacity(0.1),
                        child: Icon(
                          Icons.call,
                          color: classroomPrimaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      CircleAvatar(
                        backgroundColor: classroomPrimaryColor.withOpacity(0.1),
                        child: Icon(
                          Icons.chat,
                          color: classroomPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "\$ 180.00",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: classroomPrimaryColor),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: classroomPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                onPressed: () {
                  Get.to(ClassroomDashboardView());
                },
                child: Text(
                  "Enroll Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
