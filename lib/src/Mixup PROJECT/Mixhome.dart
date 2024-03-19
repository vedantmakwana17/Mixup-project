import 'package:demo/src/Const_image/const.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup2.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup3.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup4.dart';
import 'package:flutter/gestures.dart';
// import 'package:demo/src/Mixup/Mixup3.dart';
import 'package:flutter/material.dart';

class Mixuphome extends StatefulWidget {
  const Mixuphome({super.key});

  @override
  State<Mixuphome> createState() => _MixuphomeState();
}

class _MixuphomeState extends State<Mixuphome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Image(image: AssetImage(panther)),
            ],
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 500,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ///log in
                    Column(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 65,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Mixup2(),
                                ));
                                debugPrint("saved...");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                // elevation: 10,
                                shape: StadiumBorder(),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: const Text("Log In"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: SizedBox(
                            height: 65,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Mixup3(),
                                ));
                                debugPrint("Facebook...");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                // elevation: 10,
                                shape: StadiumBorder(),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Text("Facebook"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: SizedBox(
                            height: 65,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Mixup4(),
                                ));
                                debugPrint("saved...");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                // elevation: 10,
                                shape: StadiumBorder(),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: const Text(
                                "Google",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
