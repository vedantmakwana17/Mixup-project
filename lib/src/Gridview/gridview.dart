import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
      primary: false,
      crossAxisCount: 10,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10),
      reverse: true,
      childAspectRatio: MediaQuery.of(context).size.width /
          MediaQuery.of(context).size.height,
      children: List.generate(
        1000,
            (index) => Container(
          padding: const EdgeInsets.all(10),
          color:
          (index) % 10 == 0 ? Colors.teal.shade100 : Colors.teal.shade200,
          child: index % 2 == 0
              ? Text("$index")
              : Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("show date"),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
