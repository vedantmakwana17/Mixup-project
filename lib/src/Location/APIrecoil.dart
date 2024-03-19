import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

import '../common Api_http/const.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({super.key});

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  Location location = Location();

  bool isServiceEnabled = false;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;

  @override
  void initState() {
    super.initState();
    IsServiceEnabled();
    GetLocation();
  }

  void IsServiceEnabled() async {
    isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
    }
    if (!isServiceEnabled) {
      return;
    }
  }

  void PermissionGranted() async {
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      AppSettings.openAppSettings(type: AppSettingsType.location);
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
    debugPrint("----->>$_locationData");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "click on this button for location",
              style: myTextStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.red,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            // color: Colors.red,
            child: IconButton(
              onPressed: () {
                GetLocation();
              },
              icon: const Icon(Icons.location_on_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
