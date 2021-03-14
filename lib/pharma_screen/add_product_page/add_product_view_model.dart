import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductViewModel extends ChangeNotifier {
  TextEditingController textcontroller_product_name = TextEditingController();
  TextEditingController textcontroller_brand = TextEditingController();
  TextEditingController textcontroller_category = TextEditingController();
  TextEditingController textcontroller_price = TextEditingController();
  TextEditingController textcontroller_detail = TextEditingController();
  TextEditingController textcontroller_sell = TextEditingController();
  bool isshow = false;
  bool isHotDeal = false;
  bool isOnSaled = false;
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

  Map<String, dynamic> updateData() {
    Map<String, dynamic> data = {
      'pharmacy_name': "musicza",
      'category': "asd",
      'like': 100,
      'product_name': textcontroller_product_name.text,
      'brand': textcontroller_brand.text,
      'price': int.parse(textcontroller_price.text),
      'detail': textcontroller_detail.text,
      'sell': isOnSaled ? int.parse(textcontroller_sell.text) : 0,
      'show': isshow,
      'hotdeal': isHotDeal,
      'onsaled': isOnSaled,
    };
    return data;
  }
}
