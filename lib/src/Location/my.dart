import 'package:flutter/material.dart';

class MYLocation extends StatefulWidget {
  const MYLocation({super.key});

  @override
  State<MYLocation> createState() => _MYLocationState();
}

class _MYLocationState extends State<MYLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
