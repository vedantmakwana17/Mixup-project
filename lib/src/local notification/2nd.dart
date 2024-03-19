// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Local Notifications Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: NotificationPage(),
//     );
//   }
// }
//
// class NotificationPage extends StatelessWidget {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//
//   Future<void> _showNotification() async {
//     var initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     var initializationSettingsIOS = IOSInitializationSettings();
//     var initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );
//
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onSelectNotification: (String? payload) async {
//         // Handle notification tapped logic here
//       },
//     );
//
//     var androidDetails = AndroidNotificationDetails(
//       'channelId',
//       'Local Notification',
//       'This is the description of the notification',
//       importance: Importance.max,
//       priority: Priority.high,
//       ticker: 'ticker',
//     );
//     var iosDetails = IOSNotificationDetails();
//     var platformChannelSpecifics = NotificationDetails(
//       android: androidDetails,
//       iOS: iosDetails,
//     );
//
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       'bengan',
//       'chal nikal!',
//       platformChannelSpecifics,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Local Notifications Demo'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _showNotification(),
//           child: Text('Show Notification'),
//         ),
//       ),
//     );
//   }
// }
