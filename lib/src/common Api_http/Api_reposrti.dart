import 'package:demo/jsonTodart/demo_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ApiRepository {
  Future defaultGetCall(String url) async {
    return await http.get(Uri.parse(url));
  }

  Future defaultPostCall(String url, dynamic headers, dynamic body) async {
    return await http.post(Uri.parse(url), headers: headers, body: body);
  }
}

class Api {
  final dio = Dio();
  Future GetCall(String url) async {
    return await dio.get(url);
  }

  Future PostCall(String url, dynamic option, dynamic body) async {
    return await dio.post(url, data: Data, options: option);
  }
}
