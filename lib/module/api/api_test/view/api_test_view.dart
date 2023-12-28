import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/api_test_bloc.dart';
import '../event/api_test_event.dart';
import '../state/api_test_state.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

class ApiTestView extends StatefulWidget {
  const ApiTestView({Key? key}) : super(key: key);

  @override
  State<ApiTestView> createState() => _ApiTestViewState();
}

class _ApiTestViewState extends State<ApiTestView> {
  ApiTestBloc bloc = ApiTestBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ApiTestBloc>()) {
      GetIt.I.unregister<ApiTestBloc>();
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

  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
  String hasilRespon = "Belum Ada Data";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<ApiTestBloc, ApiTestState>(
        listener: (context, state) {},
        child: BlocBuilder<ApiTestBloc, ApiTestState>(
          builder: (context, state) {
            final bloc = context.read<ApiTestBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ApiTestBloc bloc,
    ApiTestState state,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Api Test'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.5,
            //   width: 300,
            //   decoration: BoxDecoration(
            //     color: Colors.blue.withOpacity(0.6),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: nameC,
                keyboardType: TextInputType.emailAddress,
                maxLength: 40,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.email,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your email address',
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: jobC,
                maxLength: 40,
                decoration: const InputDecoration(
                  labelText: 'Job',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your job?",
                ),
                onChanged: (value) {},
              ),
            ),
            Center(
                child: Text(
              hasilRespon,
              style: TextStyle(fontSize: 20),
            )),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      var response = await http
                          .get(Uri.parse("https://reqres.in/api/users/2"));
                      Map<String, dynamic> data =
                          json.decode(response.body) as Map<String, dynamic>;
                      setState(() {
                        hasilRespon =
                            "${data['data']['first_name']} ${data['data']['last_name']} mempunyai email berikut : ${data['data']['email']}";
                      });
                    },
                    child: Text('GET')),
                ElevatedButton(
                    onPressed: () async {
                      var response = await http.post(
                          Uri.parse("https://reqres.in/api/users"),
                          body: {"name": nameC.text, "job": jobC.text});
                      Map<String, dynamic> data =
                          json.decode(response.body) as Map<String, dynamic>;
                      setState(() {
                        hasilRespon =
                            "${data['name']} - Bekerja Sebagai ${data['job']} dan ID nya adalah ${data['id']}";
                      });
                    },
                    child: Text('POST')),
                ElevatedButton(
                    onPressed: () async {
                      var response = await http.patch(
                          Uri.parse("https://reqres.in/api/users/2"),
                          body: {"name": nameC.text, "job": jobC.text});
                      Map<String, dynamic> data =
                          json.decode(response.body) as Map<String, dynamic>;
                      setState(() {
                        hasilRespon =
                            "${data['name']} - Bekerja Sebagai ${data['job']}";
                      });
                    },
                    child: Text('PATCH')),
                ElevatedButton(
                    onPressed: () async {
                      var response = await http.delete(
                        Uri.parse("https://reqres.in/api/users/2"),
                      );
                      if (response.statusCode == 204) {
                        setState(() {
                          hasilRespon = "Data berhasil dihapus";
                        });
                      } else {
                        hasilRespon = "Data Gagal dihapus";
                      }
                      ;
                    },
                    child: Text('DELETE')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
