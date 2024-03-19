
// import 'package:demo/src/1st%20login/third_screen.dart';
import 'package:demo/src/1st%20login%20APP/third_screen.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> list = <String>['cricket', 'kho-kho', 'chess', 'football'];
  String? dropdownValue;

  int groupValue = 0;
  int radiomale = 1;
  int radiofemale = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" SECOND SCREEN"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(myImage),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Divider(
                    thickness: 5,
                    color: Colors.black87,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ///TEXT
                      Expanded(
                        flex: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Text("Feedback:-"),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Text("Addhar number:-"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: const [
                            TextField(
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              maxLength: 12,
                              keyboardType: TextInputType.phone,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: radiomale,
                          groupValue: groupValue,
                          onChanged: (value) {
                            debugPrint("You are a male");
                            groupValue = value!;
                            setState(() {});
                          }),
                      const Text('Male'),
                      Radio(
                          value: radiofemale,
                          groupValue: groupValue,
                          onChanged: (value) {
                            debugPrint("You are a female");
                            groupValue = value!;
                            setState(() {});
                          }),
                      const Text('Female'),
                    ],
                  ),
                  DropdownButton(
                    value: dropdownValue,
                    icon: const Icon(
                      Icons.arrow_circle_down_sharp,
                      color: Colors.blue ,
                    ),
                    isExpanded: true,
                    hint: const Text('hobby'),
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
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint("saved");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text("Save"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => thirdScreen(),
                        ));
                      },
                      child: const Text("Third screen"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
