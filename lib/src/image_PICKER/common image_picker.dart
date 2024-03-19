import 'package:image_picker/image_picker.dart';

class Commonpicker {
  final ImagePicker _picker = ImagePicker();
  XFile? pickedSingleImage;
  List<XFile> pickedMultiImageList = [];

  Future pickFromCamera() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );
  }

  Future pickMultipleImageFromGallery() async {
    pickedSingleImage =
        await _picker.pickImage(imageQuality: 100, source: ImageSource.gallery);
  }

  Future pickFromGallery() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
  }
}
