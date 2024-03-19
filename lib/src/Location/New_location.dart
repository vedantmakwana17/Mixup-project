import 'package:app_settings/app_settings.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class New_loacion extends StatefulWidget {
  const New_loacion({super.key});

  @override
  State<New_loacion> createState() => _New_loacionState();
}

class _New_loacionState extends State<New_loacion> {
  Location location = Location();

  bool isServiceEnabled = false;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;

  @override
  void initState() {
    super.initState();
    newServiceEnabled();
    newpermissionGranted();
  }

  void newServiceEnabled() async {
    isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        return;
      }
    }
  }

  void newpermissionGranted() async {
    _permissionGranted = await location.hasPermission();
    debugPrint("permission");
    if (_permissionGranted == PermissionStatus.denied) {
      // debugPrint("222222");
      AppSettings.openAppSettings(type: AppSettingsType.location);
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    if (_permissionGranted == PermissionStatus.grantedLimited) {
      debugPrint("granted limited");
      AppSettings.openAppSettings(type: AppSettingsType.location);
    }
  }

  void GetLocation() async {
    _locationData = await location.getLocation();
    debugPrint("--->$_locationData");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("location"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  GetLocation();
                },
                child: Text("get Location")),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Dialog(child: Text("hello"))),
          ],
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              title: Text("alert"),
              actions: [
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text("ok")),
                    TextButton(onPressed: () {}, child: Text("cancel")),
                  ],
                ),
              ],
              backgroundColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
