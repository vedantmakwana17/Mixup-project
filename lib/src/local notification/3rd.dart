import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> _showNotification() async {
    var initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = const IOSInitializationSettings();
    var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: (String? payload) async {},
    );

    var androidDetails = const AndroidNotificationDetails(
      'channelId',
      'Local Notification',
      'This is the description of the notification',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
      // sound: RawResourceAndroidNotificationSound('notification'),
    );
    var iosDetails = const IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'helllo, dev',
      'now,you are a developer',
      platformChannelSpecifics,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("notify"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showNotification(),
          child: const Text('Show Notification'),
        ),
      ),
    );
  }
}
