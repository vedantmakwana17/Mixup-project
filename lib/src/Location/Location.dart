import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Location_screen extends StatefulWidget {
  const Location_screen({super.key});

  @override
  State<Location_screen> createState() => _Location_screenState();
}

class _Location_screenState extends State<Location_screen> {
  Location location = Location();

  bool isServiceEnabled = false;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;

  @override
  void initState() {
    super.initState();
    fnIsServiceEnabled();
    fnPermissionGranted();
  }

  void fnIsServiceEnabled() async {
    isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        return;
      }
    }
  }

  void fnPermissionGranted() async {
    _permissionGranted = await location.hasPermission();

    if (_permissionGranted == PermissionStatus.denied) {
      AppSettings.openAppSettings(type: AppSettingsType.location);
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    if (_permissionGranted == PermissionStatus.deniedForever) {
      debugPrint('object');
      AppSettings.openAppSettings(type: AppSettingsType.location);
    }
    if (_permissionGranted == PermissionStatus.grantedLimited) {
      debugPrint('grantedLimited');
      AppSettings.openAppSettings(type: AppSettingsType.location);
    }
  }

  void fnGetLocation() async {
    _locationData = await location.getLocation();
    debugPrint("---> $_locationData");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (_, index) {
            return Container(
              height: 50,
              width: 500,
              color: Colors.red,
              padding: const EdgeInsets.all(8),
              child: const Text('data'),
            );
          }),
      persistentFooterButtons: [
        SizedBox(
          height: 50,
          width: 400,
          child: ListView.separated(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, i) {
              return const SizedBox(width: 10);
            },
            itemBuilder: (_, index) {
              return ElevatedButton(
                  onPressed: () {}, child: const Text('Click'));
            },
          ),
        ),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fnGetLocation();
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.favorite,
          size: 35,
        ),
      ),
    );
  }
}
