// import 'package:demo/jsonTodart/demo_model.dart';
// import 'package:demo/src/Const_image/const.dart';
// import 'package:demo/src/Mixup%20PROJECT/Mixup9.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
//
// class Mixup8 extends StatefulWidget {
//   const Mixup8({super.key});
//
//   @override
//   State<Mixup8> createState() => _Mixup8State();
// }
//
// class _Mixup8State extends State<Mixup8> {
//   final dio = Dio();
//   List<Data> listMyData = [];
//   bool isLoading = false;
//
//   Future<List<Data>> _getData() async {
//     setState(() => isLoading = true);
//     await Future.delayed(const Duration(seconds: 3));
//
//     try {
//       final response = await dio.get(
//         "https://dummy.restapiexample.com/api/v1/employees",
//         options: Options(
//           sendTimeout: const Duration(seconds: 1),
//           receiveTimeout: const Duration(seconds: 1),
//         ),
//       );
//
//       if (response.statusCode == 200) {
//         debugPrint(response.data.toString());
//         List listData = response.data['data'] as List;
//         listMyData = listData.map((e) => Data.fromJson(e)).toList();
//         setState(() {});
//       } else if (response.statusCode == 500) {
//         debugPrint("Internal server down");
//       }
//       setState(() => isLoading = false);
//       return listMyData;
//     } on DioException catch (e) {
//       setState(() => isLoading = false);
//       if (e.response != null) {
//       } else {
//         debugPrint('----e>$e');
//         debugPrint('-----requestOptions> ${e.requestOptions}');
//         debugPrint('-----message> ${e.message}');
//       }
//       return listMyData;
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: isLoading
//           ? Stack(
//               children: [
//                 SingleChildScrollView(
//                     child: Image(image: AssetImage(spiderman))),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: const [
//                     Center(
//                       child: CircularProgressIndicator(
//                         backgroundColor: Colors.black87,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           : Stack(
//               fit: StackFit.expand,
//               children: [
//                 SingleChildScrollView(
//                     child: Image(image: AssetImage(spiderman))),
//                 ListView.builder(
//                   itemCount: listMyData.length,
//                   itemBuilder: (_, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8),
//                       child: Card(
//                         color: Colors.purpleAccent,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "id: ${listMyData[index].id.toString()}",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                   Text(
//                                     "employee_name: ${listMyData[index].employeeName.toString()}",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8),
//                               child: Text(
//                                 "employee_salary: ${listMyData[index].employeeSalary.toString()}",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8),
//                               child: Text(
//                                 "employee_age: ${listMyData[index].employeeAge.toString()}",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                             BackButton(),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//     );
//   }
// }
