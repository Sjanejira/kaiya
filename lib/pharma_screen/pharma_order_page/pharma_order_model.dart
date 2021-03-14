import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_items_model.dart';

class Order {
  String pharmacy_name,
      patient_username,
      order_status,
      shipping,
      patient_name,
      patient_imageUrl;
  int orderId, total_price;
  Timestamp time_order;
  List<Items> items = [];

  Order({
    this.orderId,
    this.pharmacy_name,
    this.patient_username,
    this.patient_name,
    this.patient_imageUrl,
    this.order_status,
    this.total_price,
    this.shipping,
    this.time_order,
    this.items,
  });

  Order.fromMap(Map<String, dynamic> ordermap) {
    pharmacy_name = ordermap['pharmacy_name'];
    orderId = ordermap['orderId'];
    patient_username = ordermap['patient_username'];
    patient_name = ordermap['patient_name'];
    patient_imageUrl = ordermap['patient_imageUrl'];
    order_status = ordermap['order_status'];
    total_price = ordermap['total_price'];
    time_order = ordermap['time_order'];
    List.from(ordermap['items']).forEach((element) {
      var data = Items.fromMap(element);
      items.add(data);
    });
  }
}
