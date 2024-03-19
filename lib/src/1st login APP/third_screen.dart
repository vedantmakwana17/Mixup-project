// import 'package:demo/src/1st%20login/four%20screen.dart';
import 'package:demo/src/1st%20login%20APP/four%20screen.dart';
import 'package:demo/src/Const_image/const.dart';
import 'package:flutter/material.dart';

class thirdScreen extends StatefulWidget {
  const thirdScreen({super.key});

  @override
  State<thirdScreen> createState() => thirdScreenState();
}

class thirdScreenState extends State<thirdScreen> {
  bool pubg = false;
  bool bgmi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("THIRD SCREEN"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(myImage),
              ),
            ),
            const SizedBox(
              height: 30,
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
                              child: Text("Mother name:-"),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Text("Father name:-"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: const [
                            ///mother name
                            TextField(),
                            SizedBox(
                              height: 15,
                            ),

                            SizedBox(
                              height: 15,
                            ),

                            /// father name
                            TextField(),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
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
                      const Text("PUBG"),
                      Checkbox(
                        value: bgmi,
                        onChanged: (value) {
                          bgmi = value!;
                          setState(() {});
                          debugPrint("saved your choice");
                        },
                      ),
                      const Text("BGMI")
                    ],
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
                          builder: (context) => fourScreen(),
                        ));
                      },
                      child: const Text("four screen"),
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
