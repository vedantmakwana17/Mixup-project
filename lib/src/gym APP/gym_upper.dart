import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';

class gymUpper extends StatefulWidget {
  const gymUpper({super.key});

  @override
  State<gymUpper> createState() => _gymUpperState();
}

class _gymUpperState extends State<gymUpper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: const Text("UPPER BODY"),
      ),
      body: GridView.count(
        primary: false,
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
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
                    children:  [
                      ElevatedButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                          radius: 90,
                          backgroundImage: AssetImage(myImage),
                        ),
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
