import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:provider/provider.dart';

class PharmaEditAccountViewModel extends ChangeNotifier {
  TextEditingController textcontroller_shopname;
  TextEditingController textcontroller_address;
  TextEditingController textcontroller_road;
  TextEditingController textcontroller_district;
  TextEditingController textcontroller_province;
  TextEditingController textcontroller_zipcode;
  TextEditingController textcontroller_phone;
  TextEditingController textcontroller_email;
  TextEditingController textcontroller_password;
  File image;
  PharProfile _pharProfile;
  PharProfile get pharProfile {
    return _pharProfile;
  }

  set pharProfile(PharProfile value) {
    _pharProfile = value;
    textcontroller_shopname = TextEditingController()
      ..text = _pharProfile.pharmacy_name;
    textcontroller_address = TextEditingController()
      ..text = _pharProfile.address;
    textcontroller_road = TextEditingController()..text = _pharProfile.road;
    textcontroller_district = TextEditingController()
      ..text = _pharProfile.district;
    textcontroller_province = TextEditingController()
      ..text = _pharProfile.province;
    textcontroller_zipcode = TextEditingController()
      ..text = _pharProfile.zipcode;
    textcontroller_phone = TextEditingController()
      ..text = _pharProfile.telephone_number;
    textcontroller_email = TextEditingController()..text = _pharProfile.email;
    textcontroller_password = TextEditingController()
      ..text = _pharProfile.password;
  }

  void imgFromCamera() async {
    image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);
    notifyListeners();
  }

  void imgFromGallery(BuildContext context) async {
    image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    notifyListeners();
  }

  Map<String, dynamic> updateData() {
    print(textcontroller_road.text);
    Map<String, dynamic> data = {
      'pharmacy_name': textcontroller_shopname.text,
      'password': textcontroller_password.text,
      'telephone_number': textcontroller_phone.text,
      'address': textcontroller_address.text,
      'road': textcontroller_road.text,
      'district': textcontroller_district.text,
      'province': textcontroller_province.text,
      'zipcode': textcontroller_zipcode.text,
      'email': textcontroller_email.text
    };
    return data;
  }
}
