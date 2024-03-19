import 'dart:io';

import 'package:demo/src/Const_image/const.dart';
import 'package:demo/src/image_PICKER/practice.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SevenScreen extends StatefulWidget {
  const SevenScreen({super.key});

  @override
  State<SevenScreen> createState() => _SevenScreenState();
}

class _SevenScreenState extends State<SevenScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? pickedSingleImage;
  List<XFile> pickedMultiImageList = [];
  List<String> list = <String>['pune', 'goa', 'up', 'mp'];
  String? dropdownValue;

  Future pickFromCamera() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );
    setState(() {});
  }

  Future pickMultipleImageFromGallery() async {
    pickedSingleImage =
        await _picker.pickImage(imageQuality: 100, source: ImageSource.gallery);
    setState(() {});
  }

  Future pickFromGallery() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                pickedSingleImage == null
                    ? Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(photo),
                          radius: 80,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                              child: IconButton(
                                onPressed: () {
                                  pickMultipleImageFromGallery();
                                },
                                color: Colors.black87,
                                icon: Icon(Icons.edit),
                              ),
                            ),
                          ),
                        ),
                      )
                    : CircleAvatar(
                        backgroundImage:
                            FileImage(File(pickedSingleImage!.path)),
                        radius: 80,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                            child: IconButton(
                              onPressed: () {
                                pickMultipleImageFromGallery();
                              },
                              color: Colors.black87,
                              icon: Icon(Icons.edit),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_forward_ios),
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_forward_ios),
                      hintText: "phone",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_forward_ios),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_forward_ios),
                      hintText: "password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_circle_down_sharp,
                  color: Colors.blue,
                ),
                isExpanded: true,
                hint: const Text('states'),
                iconSize: 25,
                items: list.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  debugPrint("select your state");
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
