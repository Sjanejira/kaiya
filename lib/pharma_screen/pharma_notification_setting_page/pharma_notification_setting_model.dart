class ShoppingNotificationSetting {
  bool new_message, new_order, prepare_order, sent_order, cancelled_order;
  String pharmacy_username;

  ShoppingNotificationSetting({
    this.new_message,
    this.new_order,
    this.prepare_order,
    this.sent_order,
    this.cancelled_order,
    this.pharmacy_username,
  });

  ShoppingNotificationSetting.fromMap(Map<String, dynamic> map) {
    new_message = map['new_message'];
    new_order = map['new_order'];
    prepare_order = map['prepare_order'];
    sent_order = map['send_order'];
    cancelled_order = map['cancelled_order'];
    pharmacy_username = map['pharmacy_username'];
  }
}
