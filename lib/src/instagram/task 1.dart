import 'dart:io';

import 'package:demo/src/instagram/Task%20home.dart';
import 'package:demo/src/instagram/Task2.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  final ImagePicker _picker = ImagePicker();
  XFile? pickedSingleImage;
  List<XFile> pickedMultiImageList = [];
  List<String> list = <String>['Nice', 'Good', 'Very Good', 'Excellent'];
  String? dropdownValue;

  Future pickMultipleImageFromGallery() async {
    pickedSingleImage =
        await _picker.pickImage(imageQuality: 100, source: ImageSource.gallery);
    setState(() {});
  }

  Future pickFromGallery() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    setState(() {});
  }

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
        title: Text("Log in"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(myImage),
                  radius: 60,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    ///name
                    TextFormField(

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    ///number
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Number",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    ///id
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Id';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: " Instagram Id",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    ///password
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: " Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),


                    DropdownButton(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.add_reaction,
                        color: Colors.blue,
                      ),
                      isExpanded: true,
                      hint: const Text('Rate me'),
                      iconSize: 25,
                      items: list.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        debugPrint("Thanks for your rating");
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 60,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Task2(),
                      ));

                      login();
                    }
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => Task2(),
                    // ));
                    debugPrint("Done");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 10,
                    shape: StadiumBorder(),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: const Text("Log In"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
