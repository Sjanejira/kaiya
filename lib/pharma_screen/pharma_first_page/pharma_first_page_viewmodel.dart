import 'dart:async';
import 'package:kaiya/pharma_screen/Pharma_service.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:scoped_model/scoped_model.dart';

class PharmaFirstPageViewModel extends Model {
  PharProfile _pharProfile;
  PharProfile get pharProfile => _pharProfile;
  set pharProfile(PharProfile value) {
    _pharProfile = value;
    notifyListeners();
  }

  Future<bool> getProfile() async {
    await PharMaService?.getPharProfile(this);
    return true;
  }

  setProfile(PharProfile value) {
    _pharProfile = value;
  }
}
