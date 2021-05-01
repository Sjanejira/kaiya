import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_model.dart';

class PharmaPaymentViewModel extends ChangeNotifier {
  int clickindex;
  List<Payment> listorder;
  List<Payment> _payment;
  List<Payment> get payment {
    return _payment;
  }

  set payment(List<Payment> value) {
    _payment = value;
    notifyListeners();
  }
}
