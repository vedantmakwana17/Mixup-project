import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostApi extends StatefulWidget {
  const PostApi({super.key});

  @override
  State<PostApi> createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {
  final dio = Dio();
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future login() async {
    try {
      final response = await dio.post(
        "https://reqres.in/api/login",
        data: {
          "email": emailController.text,
          "password": passwordController.text
        },
        options: Options(
          receiveTimeout: const Duration(seconds: 3),
        ),
      );
      if (response.statusCode == 200) {
        debugPrint("------>${response.data}");
        emailController.text = '';
        passwordController.text = '';
      }
      else {
        debugPrint("statusCode---->${response.statusCode}");
      }
    } catch (e) {
      debugPrint("error ta login$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                const Text('Email'),
                const SizedBox(width: 10),
                Flexible(
                  flex: 1,
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter ';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                const Text('Password'),
                const SizedBox(width: 10),
                Flexible(
                  flex: 1,
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter ';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                if (_formKey.currentState!.validate()) {
                  login();
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
