import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaiya/pharma_screen/add_product_page/add_product_model.dart';

class AddProductViewModel extends ChangeNotifier {
  List images = [];

  void imgFromCamera() async {
    images.add(await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50));
    notifyListeners();
  }

  void imgFromGallery() async {
    images.add(await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50));
    notifyListeners();
  }
}
