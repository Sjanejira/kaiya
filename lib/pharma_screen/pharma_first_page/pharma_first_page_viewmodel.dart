import 'package:flutter/material.dart';
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
}
