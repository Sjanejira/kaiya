import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:provider/provider.dart';

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
  List refImage = [];

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

  Future uploadProductImage(BuildContext context, List image) async {
    for (File i in image) {
      refImage.add(await Provider.of<PharMaService2>(context, listen: false)
          .uploadImageProductToFirebase(i, "musicza", "product"));
    }
  }

  Map<String, dynamic> updateData() {
    Map<String, dynamic> data = {
      'pharmacy_name': "music",
      'category': "asd",
      'like': 0,
      'product_name': textcontroller_product_name.text,
      'brand': textcontroller_brand.text,
      'price': int.parse(textcontroller_price.text),
      'detail': textcontroller_detail.text,
      'sell': isOnSaled ? int.parse(textcontroller_sell.text) : 0,
      'show': isshow,
      'hotdeal': isHotDeal,
      'onsaled': isOnSaled,
      'imageUrl': refImage,
    };
    return data;
  }
}
