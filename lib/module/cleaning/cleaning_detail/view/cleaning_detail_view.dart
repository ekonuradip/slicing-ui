import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cleaning_detail_bloc.dart';
import '../event/cleaning_detail_event.dart';
import '../state/cleaning_detail_state.dart';
import 'package:get_it/get_it.dart';

class CleaningDetailView extends StatefulWidget {
  const CleaningDetailView({Key? key}) : super(key: key);

  @override
  State<CleaningDetailView> createState() => _CleaningDetailViewState();
}

class _CleaningDetailViewState extends State<CleaningDetailView> {
  CleaningDetailBloc bloc = CleaningDetailBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CleaningDetailBloc>()) {
      GetIt.I.unregister<CleaningDetailBloc>();
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
      child: BlocListener<CleaningDetailBloc, CleaningDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<CleaningDetailBloc, CleaningDetailState>(
          builder: (context, state) {
            final bloc = context.read<CleaningDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CleaningDetailBloc bloc,
    CleaningDetailState state,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 320.0,
              padding: const EdgeInsets.only(
                top: 36,
                bottom: 12,
                left: 12,
                right: 12,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1661634777510-e6e56b312604?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28.0,
                        child: Icon(
                          Icons.keyboard_backspace_sharp,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28.0,
                        child: Icon(
                          Icons.share,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28.0,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.play_circle,
                            size: 60.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "Demo Video",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        for (var i in [1, 2, 3, 4, 5, 6])
                          Container(
                            height: 55.0,
                            width: 55,
                            margin: const EdgeInsets.only(
                              right: 4.0,
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
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
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
                        "Home Cleaning",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 24.0,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "(365 reviews)",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Deep House Cleaning",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "1012 Ocean avanue, New York, USA",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[600],
                    ),
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
