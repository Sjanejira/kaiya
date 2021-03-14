import 'package:flutter/material.dart';
import 'package:kaiya/call_model.dart';
import "package:collection/collection.dart";
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:provider/provider.dart';

class AppKaiYaViewModel extends ChangeNotifier {
  int countWaiting = 0;
  int countCalling = 0;
  int countComing = 0;
  List<String> listStatus;
  List<Call> listWaiting = [];
  List<Call> listComing = [];
  List<Call> listCalling = [];
  List<Call> _call;
  List<Call> get call {
    return _call;
  }

  set call(List<Call> value) {
    _call = value;
    notifyListeners();
  }

  void setList() {
    final groupStatus = groupBy(this.call, (Call call) => call.status);
    listStatus = groupStatus.keys.toList();
    listWaiting =
        call.where((Call element) => element.status == "waiting").toList();
    listComing =
        call.where((Call element) => element.status == "coming").toList();
    listCalling =
        call.where((Call element) => element.status == "calling").toList();
  }

  Map<String, dynamic> updateData(String status, int callId) {
    Map<String, dynamic> data = {
      'callId': callId,
      'status': status,
    };
    return data;
  }
}
