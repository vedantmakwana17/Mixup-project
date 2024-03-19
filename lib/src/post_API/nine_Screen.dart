import 'package:demo/src/post_API/ten_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ninescreen extends StatefulWidget {
  const ninescreen({super.key});

  @override
  State<ninescreen> createState() => _ninescreenState();
}

class _ninescreenState extends State<ninescreen> {
  final dio = Dio();
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future login() async {
    try {
      final response = await dio.post(
        "https://reqres.in/api/login",
        data: {
          // "email": "eve.holt@reqres.in",
          // "password": "cityslicka"
          "email": emailController.text,
          "password": passwordController.text
        },
        options: Options(
          receiveTimeout: const Duration(seconds: 3),
        ),
      );

      if (response.statusCode == 200) {
        debugPrint('----> ${response.data}');
        emailController.text = '';
        passwordController.text = '';
      } else {
        debugPrint("statusCode---> ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('error at login $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
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
                        return 'Please enter';
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
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TenScreen(),
                  ));
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TenScreen(),
                  ));
                },
                child: const Text('Goto ten screen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
