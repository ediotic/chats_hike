import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final picker = ImagePicker();

  // pick image from gallery
  Future<String> pickImageFromGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return image.path;
    } else {
      return "";
    }
  }






  // pick image from camera
  Future<String> pickImageFromCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      return image.path;
    } else {
      return "";
    }
  }
}
