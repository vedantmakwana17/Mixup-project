import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class Gym2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClockPage(),
    );
  }
}

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  late String _timeString;
  late DateTime _alarmTime;
  late Timer _timer;
  late Stopwatch _stopwatch;

  @override
  void initState() {
    super.initState();
    _timeString = _formatDateTime(DateTime.now());
    _alarmTime = DateTime.now().add(Duration(minutes: 1));
    _updateTime();
    _stopwatch = Stopwatch();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _updateTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });

    final Duration timeUntilNextMinute =
        Duration(minutes: 1) - Duration(seconds: now.second);
    _timer = Timer(timeUntilNextMinute, _updateTime);
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('HH:mm:ss').format(dateTime);
  }

  void _setAlarm() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_alarmTime),
    ).then((selectedTime) {
      if (selectedTime != null) {
        final DateTime newAlarmTime = DateTime(
          _alarmTime.year,
          _alarmTime.month,
          _alarmTime.day,
          selectedTime.hour,
          selectedTime.minute,
        );
        setState(() {
          _alarmTime = newAlarmTime;
        });
      }
    });
  }

  void _startTimer() {
    _timer.cancel();
    _timer = _timer;
    _updateTime();
  }

  void _startStopwatch() {
    _stopwatch.start();
  }

  void _stopStopwatch() {
    _stopwatch.stop();
  }

  void _resetStopwatch() {
    _stopwatch.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Clock'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _timeString,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Alarm: ${DateFormat('HH:mm').format(_alarmTime)}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'Stopwatch: ${_stopwatch.elapsed}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setAlarm,
        tooltip: 'Set Alarm',
        child: Icon(Icons.alarm),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
