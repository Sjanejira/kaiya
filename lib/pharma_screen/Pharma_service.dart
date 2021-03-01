import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';

final firestoreInstance = FirebaseFirestore.instance;

class PharMaService {
  static getPharProfile(
      PharmaFirstPageViewModel pharmaFirstPageViewModel) async {
    List data = [];
    var querySnapshot =
        await firestoreInstance.collection("pharmacy").doc('1').get();
    if (querySnapshot != null) {
      data.add(PharProfile.fromMap(querySnapshot.data()));
      print(querySnapshot.data());
      pharmaFirstPageViewModel
          .setProfile(PharProfile.fromMap(querySnapshot.data()));
    }
  }
}
