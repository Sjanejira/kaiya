import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_model.dart';

class PharmaManagePaymentViewModel extends ChangeNotifier {
  TextEditingController textcontroller_bankname = TextEditingController();
  TextEditingController textcontroller_account_number = TextEditingController();
  TextEditingController textcontroller_account_holder = TextEditingController();
  bool isshow = true;
  Payment _payment;
  Payment get payment {
    return _payment;
  }

  set payment(Payment value) {
    _payment = value;
    textcontroller_bankname = TextEditingController()
      ..text = _payment.bank_name;
    textcontroller_account_number = TextEditingController()
      ..text = _payment.account_number;
    textcontroller_account_holder = TextEditingController()
      ..text = _payment.bank_account_holder;
    isshow = _payment.show;
  }

  Map<String, dynamic> updateData() {
    Map<String, dynamic> data = {
      'bank_name': "k",
      'account_number': textcontroller_account_number.text,
      'bank_account_holder': textcontroller_account_holder.text,
      'show': isshow,
      'bank_imageUrl':
          "https://firebasestorage.googleapis.com/v0/b/kaiya-6efb4.appspot.com/o/profile_pic%2Fillusion_by_gydw1n_de3eb5i.png?alt=media&token=34bf1f4e-34a1-4b7a-936f-55a78e4d47a4",
    };
    return data;
  }
}
