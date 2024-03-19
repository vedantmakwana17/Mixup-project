import 'package:demo/src/common%20Api_http/const.dart';
import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  bool isValue = true;
  bool pubg = false;
  bool bgmi = false;
  int groupValue = 0;
  int male = 1;
  int female = 2;
  List<String> list = <String>['rajkot', 'surat', 'vadodara', 'anand'];
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.brown.shade200,
              child: Text(
                "hello",
                style: TextStyle(color: Colors.transparent),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  flex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text("email:-"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Text("passwrod:-"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter name",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      TextField(
                        obscureText: isValue,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isValue = !isValue;
                              });
                            },
                            icon: isValue
                                ? Icon(
                                    Icons.remove_red_eye_rounded,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.blue,
                                  ),
                          ),
                          hintText: "Enter name",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Checkbox(
                value: pubg,
                onChanged: (value) {
                  pubg = value!;
                  setState(() {});
                },
              ),
              const Text("Adhara card"),
              Checkbox(
                value: bgmi,
                onChanged: (value) {
                  bgmi = value!;
                  setState(() {});
                  debugPrint("saved your choice");
                },
              ),
              const Text("Pan Card")
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Radio(
                  value: male,
                  groupValue: groupValue,
                  onChanged: (value) {
                    debugPrint("You are a male");
                    groupValue = value!;
                    setState(() {});
                  }),
              const Text('Male'),
              Radio(
                  value: female,
                  groupValue: groupValue,
                  onChanged: (value) {
                    debugPrint("You are a female");
                    groupValue = value!;
                    setState(() {});
                  }),
              const Text('Female'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.red.shade100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_circle_down_sharp,
                  color: Colors.blue,
                ),
                isExpanded: true,
                hint: const Text('city'),
                iconSize: 25,
                items: list.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  debugPrint("saved your hobby");
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 10,
                  shape: StadiumBorder(),
                ),
                child: Text("Save"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
