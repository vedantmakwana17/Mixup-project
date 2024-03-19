import 'package:demo/main.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';

class fourScreen extends StatefulWidget {
  const fourScreen({super.key});

  @override
  State<fourScreen> createState() => _fourScreenState();
}

class _fourScreenState extends State<fourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FOUR SCREEN"),
        backgroundColor: Colors.blue,
        centerTitle: true,
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
                ? Colors.teal.shade100
                : Colors.yellow.shade200,
            child: index % 20 == 20
                ? Text("$index")
                : Column(
                    children: [
                      const CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(myImage),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 3,
                        color: Colors.black87,
                      ),
                      ElevatedButton(
                        onPressed: () {
                         Navigator.pop(context);
                        },
                        child: const Text("Home"),
                      ),
                      Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5),
                            foregroundColor: Colors.black87,
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            debugPrint("view more");
                          },
                          child: const Text("view more"),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
