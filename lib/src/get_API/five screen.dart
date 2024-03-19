import 'package:demo/jsonTodart/demo_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class fiveScreen extends StatefulWidget {
  const fiveScreen({super.key});

  @override
  State<fiveScreen> createState() => _fiveScreenState();
}

class _fiveScreenState extends State<fiveScreen> {
  final dio = Dio();
  List<Data> listMyData = [];
  bool isLoading = false;
  // bool isVisible = false;
  // int shoppingCount = 0;

  Future<List<Data>> _getData() async {
    setState(() => isLoading = true);
    await Future.delayed(const Duration(seconds: 3));

    try {
      final response = await dio.get(
        "https://dummy.restapiexample.com/api/v1/employees",
        options: Options(
          sendTimeout: const Duration(seconds: 1),
          receiveTimeout: const Duration(seconds: 1),
        ),
      );

      if (response.statusCode == 200) {
        debugPrint(response.data.toString());
        List listData = response.data['data'] as List;
        listMyData = listData.map((e) => Data.fromJson(e)).toList();
        setState(() {});
      }
      else if (response.statusCode == 500) {
        debugPrint("Internal server down");
      }
      setState(() => isLoading = false);
      return listMyData;
    } on DioException catch (e) {
      setState(() => isLoading = false);
      if (e.response != null) {
      } else {
        debugPrint('----e>$e');
        debugPrint('-----requestOptions> ${e.requestOptions}');
        debugPrint('-----message> ${e.message}');
      }
      return listMyData;
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _getData();
              debugPrint("refresh");
            },
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: () {
              _getData();
              debugPrint("shopping cart");
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: isLoading
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.black87,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: listMyData.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("id: ${listMyData[index].id.toString()}"),
                              Text(
                                  "employee_name: ${listMyData[index].employeeName.toString()}"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                              "employee_salary: ${listMyData[index].employeeSalary.toString()}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                              "employee_age: ${listMyData[index].employeeAge.toString()}"),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
