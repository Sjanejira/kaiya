import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';

final firestoreInstance = FirebaseFirestore.instance;

class PharMaService2 extends ChangeNotifier {
  PharProfile querysnapshot;
  PharmaFirstPageViewModel pharmaviewmodel;
  Stream<QuerySnapshot> getPharProfile() {
    var snap = firestoreInstance
        .collection("pharmacy")
        .where("pharmacy_name", isEqualTo: "Musicza")
        .snapshots();
    snap.forEach((element) {
      element.docs.forEach((element) {
        if (element.exists) {
          querysnapshot = PharProfile.fromMap(element.data());
        }
      });
    });
    return snap;
  }
}
