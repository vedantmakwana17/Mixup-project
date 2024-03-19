import 'package:flutter/material.dart';

TextStyle myTextStyle = const TextStyle(
  color: Colors.black,
);

InputDecoration myDecoration = const InputDecoration(
    labelStyle: TextStyle(color: Colors.black),
    prefixIcon: Icon(Icons.login),
// fillColor: Colors.white,
// focusColor: Colors.white,
    prefixIconColor: Colors.black,
// hintStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    filled: true);

AppBar myAppbar = AppBar(
  title: Text("hello"),
  centerTitle: true,
);
