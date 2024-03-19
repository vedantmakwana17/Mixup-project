import 'package:demo/src/common%20Api_http/Api_reposrti.dart';
import 'package:demo/src/common%20Api_http/const.dart';
import 'package:flutter/material.dart';
// import 'package:repository_demo/repository/api_repository.dart';
// import 'package:repository_demo/utils/constants.dart';

class CommonAPi extends StatelessWidget {
  const CommonAPi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                }
                return null;
              },
            ),
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Future getEmployees() async {
    final result = await Api()
        .GetCall('https://dummy.restapiexample.com/api/v1/employees');

    final result2 = await Api().PostCall(
      'https://dummy.restapiexample.com/api/v1/employees',
      {'contentType': 'Application/json', 'Auth': 'Token'},
      {
        'userName': 'hello',
        'password': 'hello',
      },
    );
    print(result);
    print(result2);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    getEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: myTextStyle,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'click here',
                style: Theme.of(context).primaryTextTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
