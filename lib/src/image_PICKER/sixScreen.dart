import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SixScreen extends StatefulWidget {
  const SixScreen({super.key});

  @override
  State<SixScreen> createState() => _SixScreenState();
}

class _SixScreenState extends State<SixScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? pickedSingleImage;
  List<XFile> pickedMultiImageList = [];

  Future pickFromCamera() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );
    setState(() {});
  }

  Future pickMultipleImageFromGallery() async {
    pickedMultiImageList = await _picker.pickMultiImage(imageQuality: 100);
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
        actions: [
          IconButton(
            onPressed: () {
              pickedSingleImage = null;
              pickedMultiImageList.clear();
              setState(() {});
            },
            icon: const Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                pickMultipleImageFromGallery();
              },
              child: const Text('Select multiple image From Gallery'),
            ),
            ElevatedButton(
              onPressed: () {
                pickFromGallery();
              },
              child: const Text('Select From Gallery'),
            ),
            ElevatedButton(
              onPressed: () {
                pickFromCamera();
              },
              child: const Text('Select From Camera'),
            ),
            pickedSingleImage == null
                ? const SizedBox.shrink()
                : Image.file(File(pickedSingleImage!.path)),
            pickedMultiImageList.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        pickMultipleImageFromGallery();
                      },
                      child: SizedBox(
                        height: 500,
                        width: 500,
                        child: Card(
                          color: Colors.grey.shade200,
                          child: const Center(
                            child: Icon(
                              Icons.image,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(
                    height: 500,
                    child: ListView.builder(
                        itemCount: pickedMultiImageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.file(
                              File(pickedMultiImageList[index].path),
                            ),
                          );
                        }),
                  ),
          ],
        ),
      ),
    );
  }
}
