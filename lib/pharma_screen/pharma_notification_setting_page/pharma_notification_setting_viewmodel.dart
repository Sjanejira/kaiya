import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/pharma_notification_setting_page/pharma_notification_setting_model.dart';

class PharmaShoppingNotificationSettingViewModel extends ChangeNotifier {
  ShoppingNotificationSetting _notificationSetting;
  ShoppingNotificationSetting get notificationSetting {
    return _notificationSetting;
  }

  set notificationSetting(ShoppingNotificationSetting value) {
    _notificationSetting = value;
    notifyListeners();
  }

  Map<String, dynamic> updateData(bool setBool, String whichKey) {
    Map<String, dynamic> data = {
      '$whichKey': setBool,
    };
    return data;
  }
}
