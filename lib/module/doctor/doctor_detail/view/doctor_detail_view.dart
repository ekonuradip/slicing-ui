import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/doctor_detail_bloc.dart';
import '../event/doctor_detail_event.dart';
import '../state/doctor_detail_state.dart';
import 'package:get_it/get_it.dart';

class DoctorDetailView extends StatefulWidget {
  const DoctorDetailView({Key? key}) : super(key: key);

  @override
  State<DoctorDetailView> createState() => _DoctorDetailViewState();
}

class _DoctorDetailViewState extends State<DoctorDetailView> {
  DoctorDetailBloc bloc = DoctorDetailBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DoctorDetailBloc>()) {
      GetIt.I.unregister<DoctorDetailBloc>();
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
      child: BlocListener<DoctorDetailBloc, DoctorDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<DoctorDetailBloc, DoctorDetailState>(
          builder: (context, state) {
            final bloc = context.read<DoctorDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DoctorDetailBloc bloc,
    DoctorDetailState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.keyboard_backspace,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Doctor Details",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
                        Icons.favorite_border_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        Positioned(
                          bottom: 6,
                          right: 2,
                          child: const Icon(
                            Icons.verified,
                            size: 24.0,
                            color: Color(0xff0063f9),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Dr. Jonny Wilson",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Dentist",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 16.0,
                              color: Color(0xff0063f9),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "New York, United States",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            const Icon(
                              Icons.map,
                              size: 16.0,
                              color: Color(0xff0063f9),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Divider(),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  children: List.generate(state.specialities.length, (index) {
                    var item = state.specialities[index];
                    return Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff0166fe).withOpacity(0.2),
                            radius: 28.0,
                            child: Icon(
                              item["icon"],
                              color: Color(0xff0166fe),
                              size: 28.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            item["label"],
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0166fe),
                                overflow: TextOverflow.ellipsis),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            item["label2"],
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "About",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Working Hours",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Divider(),
                const SizedBox(
                  height: 12.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(state.schedule.length, (index) {
                    var item = state.schedule[index];
                    return Container(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Text(
                            item["day"],
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          Spacer(),
                          Text(
                            item["time"],
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff0064f6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
            onPressed: () {
              Get.to(LoginView());
            },
            child: const Text(
              "Book Appointment",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
