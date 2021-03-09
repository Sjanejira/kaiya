import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';

final firestoreInstance = FirebaseFirestore.instance;

class PharMaService {
  static getPharProfile(PharmaFirstPageViewModel pharmaFirstPageViewModel) {
    List data = [];
    List data2 = [];
    final querySnapshot = firestoreInstance
        .collection("pharmacy")
        .where("pharmacy_name", isEqualTo: "Musicza")
        .snapshots();
    //     .listen((event) {
    //   event.docs.forEach((element) {
    //     print(element.data());
    //   });
    // });
    final subscribeStream = querySnapshot.listen((event) {
      event.docs.forEach((element) {
        data.add(PharProfile.fromMap(element.data()));
      });
      print(data.length);
    });

    void close() {
      subscribeStream.cancel();
    }

    //   if (querySnapshot != null) {}
    //   final querySnapshot2 = await firestoreInstance
    //       .collection("pharmacy")
    //       .where('pharmacy_name', isEqualTo: ("Musicza"))
    //       .get();
    //   if (querySnapshot2 != null) {
    //     querySnapshot2.docs.forEach((element) {
    //       data2.add(PharProfile.fromMap(element.data()));
    //     });
    //     print("data2 length${data2.length}");
    //   }
    return data;
  }
}
