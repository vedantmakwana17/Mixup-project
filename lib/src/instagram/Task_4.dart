import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(hoodie),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(vedant),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(myImage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(photo),
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(hoodie),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(vedant),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(myImage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(photo),
            ),
          ),
        ],),
      ),
    );
  }
}
