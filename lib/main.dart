import 'package:country_picker/country_picker.dart';
import 'package:demo/src/1st%20login%20APP/third_screen.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixhome.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup2.dart';
import 'package:demo/src/Mixup%20PROJECT/Mixup6.dart';
import 'package:demo/src/country_code.dart';
import 'package:demo/src/file_manager/file2.dart';
import 'package:demo/src/file_manager/file_1.dart';
import 'package:demo/src/file_manager/file_home.dart';
import 'package:demo/src/gym%20APP/Gym2.dart';
import 'package:demo/src/gym%20APP/gymhome.dart';
import 'package:demo/src/image_PICKER/practice.dart';
import 'package:demo/src/local%20notification/2nd.dart';
import 'package:demo/src/local%20notification/4th.dart';
import 'package:demo/src/new/new.dart';
import 'package:demo/src/share_pref/PostApi.dart';
import 'package:demo/src/instagram/Task%20home.dart';
import 'package:demo/src/instagram/Task2.dart';
import 'package:demo/src/instagram/Task_4.dart';
// import 'package:demo/src/Mixup/Mixhome.dart';
import 'package:demo/src/share_pref/pref_1.dart';
import 'package:demo/src/instagram/task%201.dart';
import 'package:demo/src/get_API/five%20screen.dart';
// import 'package:demo/src/1st%20login/four%20screen.dart';
// import 'package:demo/src/gym/gymfull.dart';
// import 'package:demo/src/gym/gymhome.dart';
import 'package:demo/src/post_API/nine_Screen.dart';
// import 'package:demo/src/1st%20login/second_screen.dart';
import 'package:demo/src/image_PICKER/sevenScreen.dart';
import 'package:demo/src/image_PICKER/sixScreen.dart';
import 'package:demo/src/instagram/task3.dart';
import 'package:demo/src/post_API/ten_screen.dart';
// import 'package:demo/src/1st%20login/third_screen.dart';
import 'package:demo/src/Const_image/const.dart';
// import 'package:demo/src/sir%20Task/sir_task.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'src/1st login APP/four screen.dart';
import 'src/1st login APP/second_screen.dart';
import 'src/Location/APIrecoil.dart';
import 'src/Location/my.dart';
import 'src/Maps/maps.dart';
import 'src/Mixup PROJECT/Mixup4.dart';
import 'src/common Api_http/sir_task.dart';
import 'src/gym APP/gym_1.dart';
import 'src/local notification/3rd.dart';
import 'src/practice for all/1st.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MyHome(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const MyHome(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const thirdScreen(),
        '/four': (context) => const fourScreen(),
        '/Task': (context) => const Task3(),
      },
    ),
  );
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  DateTime selectionDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "selected date:-",
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(selectionDate),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    child: const Text("Select Date"),
                    onPressed: () async {
                      final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: selectionDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2025),
                      );
                      setState(() {
                        selectionDate = dateTime!;
                      });
                    }),
              ],
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(myImage),
                radius: 70,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    thickness: 5,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        ///Text
                        Expanded(
                          flex: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Text("Name:-"),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Text("Age:-"),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Text("Number:-"),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Text("Address:-"),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),

                        ///Textfield
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: const [
                              ///Name
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

                              ///AGE
                              TextField(),

                              SizedBox(
                                width: 20,
                                height: 15,
                              ),

                              ///NUmber
                              TextField(
                                maxLength: 10,
                                keyboardType: TextInputType.number,
                              ),

                              SizedBox(
                                width: 15,
                                height: 2,
                              ),

                              ///Address
                              TextField(
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///button
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SecondScreen(),
                        ));
                        debugPrint("saved...");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: const Text("Save"),
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
