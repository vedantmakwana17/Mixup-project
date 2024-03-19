// import 'package:demo/src/gym/gym_1.dart';
// import 'package:demo/src/gym/gym_upper.dart';
// import 'package:demo/src/gym/gymfull.dart';
// import 'package:demo/src/1st%20login/second_screen.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:demo/src/gym%20APP/gym_1.dart';
import 'package:demo/src/gym%20APP/gymfull.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Gym extends StatefulWidget {
  const Gym({super.key});

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  DateTime selectionDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GYM"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Image(image: AssetImage(spiderman)),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: selectionDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                  );
                  setState(() {
                    selectionDate = dateTime!;
                  });
                },
                child: Text("Starting Date :"),
              ),
              Text(
                style: TextStyle(color: Colors.white),
                DateFormat("dd/MM/yyyy").format(selectionDate),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 500,
                        ),

                        ///log in
                        Column(
                          children: [
                            Center(
                              child: SizedBox(
                                height: 65,
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => Gym3(),
                                    ));
                                    debugPrint("saved...");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.tealAccent,
                                    // elevation: 10,
                                    shape: StadiumBorder(),
                                  ),
                                  // clipBehavior: Clip.antiAlias,
                                  child: const Text(
                                    "Log In",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: SizedBox(
                                height: 65,
                                width: 250,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => Gym1(),
                                    ));
                                    debugPrint("started");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber.shade200,
                                    // elevation: 10,
                                    shape: StadiumBorder(),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: const Text(
                                    "Get Started",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
