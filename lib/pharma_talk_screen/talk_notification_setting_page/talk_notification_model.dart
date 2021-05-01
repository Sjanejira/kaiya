class NotificationSetting {
  bool new_message, new_order, payment_success, phone_call, video_call;
  String pharmacy_username;

  NotificationSetting({
    this.new_message,
    this.new_order,
    this.payment_success,
    this.phone_call,
    this.video_call,
    this.pharmacy_username,
  });

  NotificationSetting.fromMap(Map<String, dynamic> map) {
    new_message = map['new_message'];
    new_order = map['new_order'];
    payment_success = map['payment_success'];
    phone_call = map['phone_call'];
    video_call = map['video_call'];
    pharmacy_username = map['pharmacy_username'];
  }
}
