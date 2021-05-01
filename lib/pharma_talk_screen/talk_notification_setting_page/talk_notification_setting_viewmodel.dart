import 'package:flutter/material.dart';
import 'package:kaiya/pharma_talk_screen/talk_notification_setting_page/talk_notification_model.dart';

class PharmaNotificationSettingViewModel extends ChangeNotifier {
  NotificationSetting _notificationSetting;
  NotificationSetting get notificationSetting {
    return _notificationSetting;
  }

  set notificationSetting(NotificationSetting value) {
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
