import 'dart:io';
import 'package:kaiya/call_model.dart';
import 'package:kaiya/pharma_screen/add_product_page/product_model.dart';
import 'package:kaiya/pharma_screen/pharma_notification_setting_page/pharma_notification_setting_model.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_model.dart';
import 'package:kaiya/pharma_talk_screen/talk_notification_setting_page/talk_notification_model.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firestoreInstance = FirebaseFirestore.instance;
final firebaseAuth = FirebaseAuth.instance;

class PharMaService2 extends ChangeNotifier {
  PharProfile querysnapshot;
  List<Order> orderQuerySnapshot;
  List<Payment> paymentSnapshot;
  NotificationSetting notificationSnapshot;
  ShoppingNotificationSetting notificationShoppingSnapshot;
  Future<QuerySnapshot> getPharProfile() async {
    var snap = await firestoreInstance
        .collection("pharmacy")
        .where("pharmacy_name", isEqualTo: "Musicza")
        .get();
    snap.docs.forEach((element) {
      querysnapshot = PharProfile.fromMap(element.data());
    });
    return snap;
  }

  Stream<List<Call>> getCall() {
    var snap = firestoreInstance
        .collection("call")
        .where("patient_name", isEqualTo: "music")
        .snapshots()
        .map(
          (event) => event.docs.map((e) {
            return Call.fromMap(
              e.data(),
            );
          }).toList(),
        );
    return snap;
  }

  Stream<QuerySnapshot> getChat() {
    var snap = firestoreInstance
        .collection("chat")
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

  Stream<QuerySnapshot> getChatMessages() {
    var snap = firestoreInstance
        .collection("chat")
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

  Stream<List<Order>> getOrder() {
    var snap = firestoreInstance
        .collection("order")
        .where("orderId", isEqualTo: 1)
        .snapshots()
        .map(
          (event) => event.docs
              .map(
                (e) => Order.fromMap(
                  e.data(),
                ),
              )
              .toList(),
        );
    return snap;
  }

  Stream<List<Product>> getProduct() {
    var snap = firestoreInstance
        .collection("product")
        .where("pharmacy_name", isEqualTo: "musicza")
        .snapshots()
        .map(
          (event) => event.docs.map((e) {
            return Product.fromMap(
              e.data(),
            );
          }).toList(),
        );
    return snap;
  }

  Future<QuerySnapshot> getMyShipping() async {
    var snap = firestoreInstance
        .collection("myshipping")
        .where("username", isEqualTo: "Musicza")
        .get();
    return snap;
  }

  Future<QuerySnapshot> getLanguage() async {
    var snap = firestoreInstance
        .collection("language")
        .where("username", isEqualTo: "Musicza")
        .get();
    return snap;
  }

  Stream<List<Payment>> getPayment() {
    var snap = firestoreInstance
        .collection("payment")
        .where("bank_name", isEqualTo: "k")
        .snapshots()
        .map(
          (event) => event.docs
              .map(
                (e) => Payment.fromMap(
                  e.data(),
                ),
              )
              .toList(),
        );
    return snap;
  }

  Stream<QuerySnapshot> getNotificationSetting() {
    var snap = firestoreInstance
        .collection("notification_talk")
        .where("pharmacy_username", isEqualTo: "k")
        .snapshots();
    snap.forEach((element) {
      element.docs.forEach((element) {
        if (element.exists) {
          notificationSnapshot = NotificationSetting.fromMap(element.data());
        }
      });
    });
    return snap;
  }

  Stream<QuerySnapshot> getShoppingNotificationSetting() {
    var snap = firestoreInstance
        .collection("notification_phar_shopping")
        .where("pharmacy_username", isEqualTo: "k")
        .snapshots();
    snap.forEach((element) {
      element.docs.forEach((element) {
        if (element.exists) {
          notificationShoppingSnapshot =
              ShoppingNotificationSetting.fromMap(element.data());
        }
      });
    });
    return snap;
  }

  void addData(Map<String, dynamic> data, String collection) {
    firestoreInstance.collection(collection).add(data);
  }

  Future<void> updateData(Map<String, dynamic> data, String collection) async {
    var docSnap = await firestoreInstance
        .collection(collection)
        .where("pharmacy_name", isEqualTo: "k")
        .get();
    docSnap.docs.forEach((element) {
      final docRef2 = element.reference.id;
      try {
        firestoreInstance.collection(collection).doc('$docRef2').update(data);
      } catch (e) {
        print(e);
      }
    });
  }

  Future uploadImageToFirebase(
      File _imageFile, String username, String collection) async {
    String fileName = basename(_imageFile.path);
    firebase_storage.Reference firebaseStorageRef = firebase_storage
        .FirebaseStorage.instance
        .ref()
        .child('uploads/$fileName');
    firebase_storage.UploadTask uploadTask =
        firebaseStorageRef.putFile(_imageFile);
    firebase_storage.TaskSnapshot taskSnapshot = await uploadTask;
    taskSnapshot.ref.getDownloadURL().then(
      (value) {
        updateProfileImage(value, collection, username);
        print(value);
      },
    );
  }

  Future<void> updateProfileImage(
      String imageUrl, String collection, String username) async {
    var docSnap = await firestoreInstance
        .collection(collection)
        .where("username", isEqualTo: username)
        .get();
    docSnap.docs.forEach((element) {
      final docRef2 = element.reference.id;
      try {
        firestoreInstance
            .collection(collection)
            .doc('$docRef2')
            .update({'imageUrl': imageUrl});
      } catch (e) {
        print(e);
      }
    });
  }
}
