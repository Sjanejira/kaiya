import 'package:cloud_firestore/cloud_firestore.dart';

class Call {
  String pharmacy_name, call_type, patient_imageUrl, patient_name, status;
  Timestamp time_stamp;

  Call({
    this.pharmacy_name,
    this.call_type,
    this.patient_imageUrl,
    this.patient_name,
    this.status,
    this.time_stamp,
  });

  Call.fromMap(Map<String, dynamic> map) {
    pharmacy_name = map['pharmacy_name'];
    call_type = map['call_type'];
    patient_imageUrl = map['patient_imageUrl'];
    patient_name = map['patient_name'];
    status = map['status'];
    time_stamp = map['time_stamp'];
  }
}
