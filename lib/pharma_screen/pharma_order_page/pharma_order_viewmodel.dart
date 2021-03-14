import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';

class PharmaOrderViewModel extends ChangeNotifier {
  List<Order> listorder;
  List<Order> _order;
  List<Order> get order {
    return _order;
  }

  set order(List<Order> value) {
    _order = value;
    listorder = _order;
    notifyListeners();
  }
}
