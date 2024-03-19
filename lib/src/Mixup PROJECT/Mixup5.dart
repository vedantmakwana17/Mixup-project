// import 'package:demo/src/Mixup/Mixup8.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup8.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup9.dart';
import 'package:flutter/material.dart';

class Mixup5 extends StatefulWidget {
  const Mixup5({super.key});

  @override
  State<Mixup5> createState() => _Mixup5State();
}

class _Mixup5State extends State<Mixup5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotel List"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "7 Apple Hotel,Vadodara",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Old Chhani Rd,Next to D-Mart, Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$500",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "Hotel Casa,Vadodara",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Saraswat  Rangoli Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$436",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "Hotel Amber",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Near Railway Station, Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$975",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "Hotel Marigold,Vadodara",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "SayajiGunj Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$590",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "Hotel Maahi,Vadodara",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Old Chhani Rd, Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$50",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "Hotel lecto,Vadodara",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Nizampura, Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$213",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "Hotel crypto",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "behind Railway Station, Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$234",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // height: ,
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hotel Name: "),
                              Text(
                                "Hotel Oyo,Vadodara",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hotel Address:"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Krishna complex,5 floor, Vadodara",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price:"),
                                  SizedBox(width: 10),
                                  Text(
                                    "\$100",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
