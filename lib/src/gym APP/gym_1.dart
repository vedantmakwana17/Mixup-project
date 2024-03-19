import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';

class Gym1 extends StatefulWidget {
  const Gym1({super.key});

  @override
  State<Gym1> createState() => _Gym1State();
}

class _Gym1State extends State<Gym1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("LOWER Body"),
        centerTitle: true,
        // backgroundColor: Colors.lightBlue,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image(image: AssetImage(cute)),
                Image(image: AssetImage(cute)),
              ],
            ),
          ),
          SizedBox(
            height: 310,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.transparent,
              child: Column(
                children: [
                  Image(
                    image: AssetImage(punisher),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("hello"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // elevation: 10,
                          shape: StadiumBorder(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("hello"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // elevation: 10,
                          shape: StadiumBorder(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("hello"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // elevation: 10,
                          shape: StadiumBorder(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("hello"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // elevation: 10,
                          shape: StadiumBorder(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("hello"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // elevation: 10,
                          shape: StadiumBorder(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
