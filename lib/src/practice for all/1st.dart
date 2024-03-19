import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:demo/src/1st%20login%20APP/second_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:demo/jsonTodart/demo_model.dart';
import 'package:location/location.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  Location location = Location();

  bool isServiceEnabled = false;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;

  @override
  void initState() {
    super.initState();
    IsServiceEnabld();
    PermissionGranted();

  }

  void IsServiceEnabld() async {
    isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        return;
      }
    }
  }

  void PermissionGranted() async {
    _permissionGranted = await location.hasPermission();

    if (_permissionGranted == PermissionStatus.denied) {
      AppSettings.openAppSettings(type: AppSettingsType.settings);
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    if (_permissionGranted == PermissionStatus.deniedForever) {
      AppSettings.openAppSettings(type: AppSettingsType.location);
    }
    if (_permissionGranted == PermissionStatus.grantedLimited) {
      AppSettings.openAppSettings(type: AppSettingsType.location);
    }
  }

  void GetLocation() async {
    _locationData = await location.getLocation();
    print("------>$_locationData");
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GetLocation();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
