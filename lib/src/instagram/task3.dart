import 'package:demo/src/instagram/Task5.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        primary: false,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        reverse: false,
        childAspectRatio: MediaQuery.of(context).size.width /
            MediaQuery.of(context).size.height,
        children: List.generate(
          20,
          (index) => Container(
            padding: const EdgeInsets.all(10),
            color: (index) % 2 == 0
                ? Colors.deepPurpleAccent.shade100
                : Colors.yellow.shade200,
            child: index % 20 == 20
                ? Text("$index")
                : Column(
                    children: [
                      ElevatedButton(
                        child: Image(image: AssetImage(hoodie)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Task5(),
                          ));
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
