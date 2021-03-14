import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_notification_setting_page/pharma_notification_setting_viewmodel.dart';
import 'package:provider/provider.dart';

class PharmaNotificationSetting extends StatefulWidget {
  static const String id = 'pharma_notification';

  @override
  _PharmaNotificationSetting createState() => _PharmaNotificationSetting();
}

class _PharmaNotificationSetting extends State<PharmaNotificationSetting>
    with TickerProviderStateMixin {
  bool _cancelled_order = true;
  bool _new_message = true;
  bool _new_order = true;
  bool _prepare_order = true;
  bool _send_order = true;
  int isSetNotification = 0;
  PharmaShoppingNotificationSettingViewModel viewModel;

  @override
  void initState() {
    viewModel = PharmaShoppingNotificationSettingViewModel();
    super.initState();
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
              stream: Provider.of<PharMaService2>(context)
                  .getShoppingNotificationSetting(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                viewModel.notificationSetting =
                    Provider.of<PharMaService2>(context)
                        .notificationShoppingSnapshot;
                if (viewModel.notificationSetting != null) {
                  if (isSetNotification == 0) {
                    _new_message = viewModel.notificationSetting.new_message;
                    _new_order = viewModel.notificationSetting.new_order;
                    _cancelled_order =
                        viewModel.notificationSetting.cancelled_order;
                    _prepare_order =
                        viewModel.notificationSetting.prepare_order;
                    _send_order = viewModel.notificationSetting.sent_order;
                    isSetNotification++;
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
                                    "Prepare Order",
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
                                    value: _prepare_order,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _prepare_order = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _prepare_order,
                                                    "prepare_order"),
                                                "notification_phar_shopping");
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
                                    "Send Order",
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
                                    value: _send_order,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _send_order = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _send_order, "send_order"),
                                                "notification_phar_shopping");
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
                                    "Cancelled Order",
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
                                    value: _cancelled_order,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _cancelled_order = value;
                                        Provider.of<PharMaService2>(context,
                                                listen: false)
                                            .updateData(
                                                viewModel.updateData(
                                                    _cancelled_order,
                                                    "cancelled_order"),
                                                "notification_phar_shopping");
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
                                                "notification_phar_shopping");
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
                                                "notification_phar_shopping");
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
