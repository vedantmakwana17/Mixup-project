import 'dart:io';
// import 'package:file_manager/file_manager.dart';
import 'package:demo/src/file_manager/file2.dart';
import 'package:http/http.dart' as http;
import 'package:demo/src/file_manager/file_1.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../Const_image/const.dart';

class FileHome extends StatefulWidget {
  const FileHome({super.key});

  @override
  State<FileHome> createState() => _FileHomeState();
}

class _FileHomeState extends State<FileHome> {
  String _selectedFilePath = '';
  List<String> _displayedFiles = [];

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _selectedFilePath = result.files.single.path!;
        _displayedFiles.add(_selectedFilePath);
      });

      await saveFile(_selectedFilePath);
    }
  }

  Future<void> saveFile(String filePath) async {
    final fileName = filePath.split('/').last;
    final fileType = fileName.split('.').last;

    // Get the directory for the file type
    Directory? fileTypeDir = await getDirectoryForFileType(fileType);

    if (fileTypeDir != null) {
      // Copy the file to the directory
      final newFilePath = '${fileTypeDir.path}/$fileName';
      await File(filePath).copy(newFilePath);
    }
  }

  Future<Directory?> getDirectoryForFileType(String fileType) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    Directory? fileTypeDir;

    switch (fileType) {
      case 'pdf':
        fileTypeDir = Directory('${appDocDir.path}/pdf');
        break;
      case 'jpg':
      case 'jpeg':
      case 'png':
        fileTypeDir = Directory('${appDocDir.path}/pictures');
        break;
      // Add more cases for different file types as needed
      default:
        break;
    }

    if (fileTypeDir != null && !fileTypeDir.existsSync()) {
      fileTypeDir.createSync(recursive: true);
    }

    return fileTypeDir;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue.shade500,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Home screen"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => File1(),
              ),
            );
          },
          icon: Icon(Icons.account_circle_outlined,
              color: Colors.black, size: 40),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 650,
            // width: 600,
            child: Stack(
              children: [
                // Center(
                //   child: SingleChildScrollView(
                //     child: Image(
                //       image: AssetImage(panther),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 60,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Selected Items:")],
                          ),
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 90,
                        child: Card(
                          child: Center(
                              child: Text(
                            "PDF",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                          color: Colors.amber.shade800,
                        ),
                      ),

                      // SizedBox(
                      //   height: 10,
                      // ),
                      // SizedBox(
                      //   height: 90,
                      //   child: Card(
                      //     child: Center(child: Text("DOCUMENT")),
                      //     color: Colors.amber.shade800,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.lightBlue.shade500,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   height: 12003,
                      // ),
                      Center(
                        child: SizedBox(
                          width: 150,
                          height: 80,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () {
                              // Navigator.of(context).pop(MaterialPageRoute(
                              //   builder: (context) => File2(),
                              // ));
                            },
                            child: Text(
                              "Upload",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Center(
                        child: SizedBox(
                          width: 150,
                          height: 80,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              // Navigator.of(context).pop(MaterialPageRoute(
                              //   builder: (context) => File2(),
                              // ));
                            },
                            child: Text(
                              "Files",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // floatingActionButton: FloatingActionButton(child: Text("Upload"),onPressed: (){},),
    );
  }

  getApplicationDocumentsDirectory() {}
}
