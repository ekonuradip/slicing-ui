import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/coffeedetail_bloc.dart';
import '../event/coffeedetail_event.dart';
import '../state/coffeedetail_state.dart';
import 'package:get_it/get_it.dart';

class CoffeedetailView extends StatefulWidget {
  const CoffeedetailView({Key? key}) : super(key: key);

  @override
  State<CoffeedetailView> createState() => _CoffeedetailViewState();
}

class _CoffeedetailViewState extends State<CoffeedetailView> {
  CoffeedetailBloc bloc = CoffeedetailBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CoffeedetailBloc>())
      GetIt.I.unregister<CoffeedetailBloc>();
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
      child: BlocListener<CoffeedetailBloc, CoffeedetailState>(
        listener: (context, state) {},
        child: BlocBuilder<CoffeedetailBloc, CoffeedetailState>(
          builder: (context, state) {
            final bloc = context.read<CoffeedetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CoffeedetailBloc bloc,
    CoffeedetailState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              size: 24.0,
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text('Bronx, NYC'),
          ],
        ),
        actions: [
          const Icon(
            Icons.settings,
            size: 24.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 250.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1512568400610-62da28bc8a13?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvZmZlZXxlbnwwfHwwfHx8MA%3D%3D",
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
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    "Tony's Coffee",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff234141)),
                  ),
                  Spacer(),
                  Text(
                    "1.5 km",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      color: Colors.grey[700],
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
                    size: 24.0,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "(623 Reviews)",
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
              Row(
                children: List.generate(state.iconText.length, (index) {
                  var item = state.iconText[index];
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 6.0,
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
                        children: [
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Center(
                              child: Icon(item["icon"],
                                  size: 48.0, color: Color(0xff234141)),
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            item["label"],
                            style: TextStyle(
                              fontSize: 16.0,
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
              Text(
                "About",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff234141)),
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
                height: 12.0,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xff234141),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff234141),
                        ),
                        onPressed: () {
                          Get.to(LoginView());
                        },
                        child: const Text(
                          "Book a Table",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
