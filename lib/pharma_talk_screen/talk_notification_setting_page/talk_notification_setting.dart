import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_talk_screen/talk_notification_setting_page/talk_notification_setting_viewmodel.dart';
import 'package:provider/provider.dart';

class TalkNotificationSetting extends StatefulWidget {
  static const String id = 'talk_notification';

  @override
  _TalkNotificationSetting createState() => _TalkNotificationSetting();
}

class _TalkNotificationSetting extends State<TalkNotificationSetting>
    with TickerProviderStateMixin {
  bool _new_message = true;
  bool _new_order = true;
  bool _payment_success = true;
  bool _phone_call = true;
  bool _video_call = true;
  PharmaNotificationSettingViewModel viewModel;
  int counter = 0;

  @override
  void initState() {
    viewModel = PharmaNotificationSettingViewModel();
    super.initState();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'Notification Setting',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: StreamBuilder(
              stream:
                  Provider.of<PharMaService2>(context).getNotificationSetting(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                viewModel.notificationSetting =
                    Provider.of<PharMaService2>(context).notificationSnapshot;
                if (viewModel.notificationSetting != null) {
                  print(counter);
                  if (counter == 0) {
                    _new_message = viewModel.notificationSetting.new_message;
                    _new_order = viewModel.notificationSetting.new_order;
                    _payment_success =
                        viewModel.notificationSetting.payment_success;
                    _phone_call = viewModel.notificationSetting.phone_call;
                    _video_call = viewModel.notificationSetting.video_call;
                    counter++;
                  }
                  return Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding:
                            EdgeInsets.only(top: 30.h, bottom: 7.h, left: 30.w),
                        child: Text(
                          "My Order",
                          style: TextStyle(
                            color: Color.fromRGBO(193, 193, 193, 1),
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 30.w),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    "Phone Call",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 10.0.h, bottom: 5.0.h),
                                  padding: EdgeInsets.only(right: 30.0.w),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _phone_call,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _phone_call = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _phone_call, "phone_call"),
                                                "notification_talk");
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    "Video Call",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 10.0.h, bottom: 5.0.h),
                                  padding: EdgeInsets.only(right: 30.0.w),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _video_call,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _video_call = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _video_call, "video_call"),
                                                "notification_talk");
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding:
                            EdgeInsets.only(top: 20.h, bottom: 7.h, left: 30.w),
                        child: Text(
                          "Chat",
                          style: TextStyle(
                            color: Color.fromRGBO(193, 193, 193, 1),
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 30.w),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    "New Messages",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 10.0.h, bottom: 5.0.h),
                                  padding: EdgeInsets.only(right: 30.0.w),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _new_message,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _new_message = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _new_message,
                                                    "new_message"),
                                                "notification_talk");
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    "New Order",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 10.0.h, bottom: 5.0.h),
                                  padding: EdgeInsets.only(right: 30.0.w),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _new_order,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _new_order = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _new_order, "new_order"),
                                                "notification_talk");
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    "Payment Success",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 10.0.h, bottom: 5.0.h),
                                  padding: EdgeInsets.only(right: 30.0.w),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _payment_success,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _payment_success = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _payment_success,
                                                    "payment_success"),
                                                "notification_talk");
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
      ),
    );
  }
}
