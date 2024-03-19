
import 'package:demo/jsonTodart/demo_model.dart';
import 'package:demo/src/share_pref/pref_2.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dio = Dio();
  List<Data> listEmployeeData = [];
  bool isLoading = false;
  bool isVisible = false;
  int shoppingCount = 0;

  Future<List<Data>> _getEmployee() async {
    setState(() => isLoading = true);
    Map<String, dynamic> headers = {
      "authentication": "",
    };
    // final response = await dio.post(
    //   'https://reqres.in/api/login',
    //   options: Options(
    //     receiveTimeout: const Duration(seconds: 3),
    //     followRedirects: false,
    //     headers: headers,
    //     contentType: "application/json",
    //   ),
    //   data: {
    //     "email": "eve.holt@reqres.in",
    //     "password": "cityslicka",
    //   },
    // );

    try {
      final response = await dio.get(
        'https://dummy.restapiexample.com/api/v1/employees',
        options: Options(
          sendTimeout: const Duration(seconds: 1),
          receiveTimeout: const Duration(seconds: 1),
        ),
      );

      if (response.statusCode == 200) {
        print(response);
        // List listData = response.data['data'] as List;
        // listEmployeeData = listData.map((e) => Data.fromJson(e)).toList();
        // shoppingCount = listEmployeeData.length;
        // setState(() {});
      } else if (response.statusCode == 500) {
        debugPrint('Internal Server Error');
      }
      setState(() => isLoading = false);
      return listEmployeeData;
    } on DioException catch (e) {
      setState(() => isLoading = false);
      if (e.response != null) {
        debugPrint('----data> ${e.response!.data}');
        debugPrint('----headers> ${e.response!.headers}');
        debugPrint('----requestOptions> ${e.response!.requestOptions}');
      } else {
        debugPrint('----e> $e');
        debugPrint('----requestOptions> ${e.requestOptions}');
        debugPrint('----message> ${e.message}');
      }
      return listEmployeeData;
    }
  }

  @override
  void initState() {
    _getEmployee();
    super.initState();
  }

  void logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogin', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          title: const Text('Home'),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                _getEmployee();
                debugPrint("Method called");
              },
              onDoubleTap: () {
                debugPrint("onDoubleTap Method called");
              },
              onLongPress: () {
                debugPrint("onLongPress Method called");
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$shoppingCount"),
                  const Icon(Icons.shopping_cart),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                _getEmployee();
                debugPrint("Method called");
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: isLoading
            ? _loadingWidgetLinear()
            : Column(
                children: [
                  Visibility(
                    visible: isVisible,
                    child: const Text('Hello'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      logOut();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChooseLocation(),
                      ));
                      // isVisible = !isVisible;
                      // debugPrint(isVisible.toString());
                      // setState(() {});
                    },
                    child: const Text('click'),
                  ),
                ],
              )
        // : ListView.builder(
        //     itemCount: listEmployeeData.length,
        //     itemBuilder: (_, index) {
        //       return Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Card(
        //           color: Colors.yellow.shade100,
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Text(
        //                         "id : ${listEmployeeData[index].id.toString()}"),
        //                     Text(
        //                         "employee_age : ${listEmployeeData[index].employeeAge.toString()}"),
        //                   ],
        //                 ),
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: Text(
        //                     "employee_name : ${listEmployeeData[index].employeeName.toString()}"),
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: Visibility(
        //                   visible: listEmployeeData[index].employeeSalary! < 100000,
        //                   child: Text("employee_salary : ${listEmployeeData[index].employeeSalary.toString() ?? ""}"),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        );
  }

  Widget _loadingWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }

  Widget _loadingWidgetLinear() {
    return Column(
      children: const [
        Center(
            child: LinearProgressIndicator(
          color: Colors.red,
          minHeight: 35,
        )),
      ],
    );
  }
}
