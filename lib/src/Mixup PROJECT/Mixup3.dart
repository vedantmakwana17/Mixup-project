import 'dart:io';

import 'package:demo/src/Mixup%20PROJECT/Mixup4.dart';
//import 'package:demo/src/Mixup/Mixup4.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup6.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Mixup3 extends StatefulWidget {
  const Mixup3({super.key});

  @override
  State<Mixup3> createState() => _Mixup3State();
}

class _Mixup3State extends State<Mixup3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Accounts"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              color: Colors.purpleAccent,
              width: 300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("shail gandhi",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("ronak Parmar",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Vanraj rohit",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Priya roy",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Jayraj solanki",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Parmar vishal",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Nishtha pitrodia",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Vedant makwana",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(

                        onPressed: () {},
                        child: Text("Priyanka waghela",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Nisha patel",style: TextStyle(color: Colors.black),),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
