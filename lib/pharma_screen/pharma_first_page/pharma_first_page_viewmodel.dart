import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/add_product_page/product_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';

class PharmaFirstPageViewModel extends ChangeNotifier {
  PharProfile _pharProfile;
  PharProfile get pharProfile {
    return _pharProfile;
  }

  set pharProfile(PharProfile value) {
    _pharProfile = value;
    notifyListeners();
  }

  List<Product> _product;
  List<Product> get product {
    return _product;
  }

  set product(List<Product> value) {
    _product = value;
    notifyListeners();
  }
}
