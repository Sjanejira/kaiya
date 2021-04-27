import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class PatientNotificationSetting extends StatefulWidget {
  static const String id = 'patient_notification_setting';

  @override
  _PatientNotificationSetting createState() => _PatientNotificationSetting();
}

class _PatientNotificationSetting extends State<PatientNotificationSetting>
    with TickerProviderStateMixin {
  bool _lights = true;
  bool _darks = true;
  bool _blue = true;
  bool _red = true;
  bool _grey = true;
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
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            brightness: Brightness.light,
            title: const Text(
              'Notification',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 30.h, bottom: 7.h, left: 30.w),
                child: Text(
                  "My Order",
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1),
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Pay Bill",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(19, 65, 83, 1),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0.h, bottom: 5.0.h),
                          padding: EdgeInsets.only(right: 30.0.w),
                          child: CupertinoSwitch(
                            activeColor: Color.fromRGBO(46, 130, 139, 1),
                            value: _darks,
                            onChanged: (bool value) {
                              setState(() {
                                _darks = value;
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
                            "Order Update",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(19, 65, 83, 1),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0.h, bottom: 5.0.h),
                          padding: EdgeInsets.only(right: 30.0.w),
                          child: CupertinoSwitch(
                            activeColor: Color.fromRGBO(46, 130, 139, 1),
                            value: _lights,
                            onChanged: (bool value) {
                              setState(() {
                                _lights = value;
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
                            "Shipping Success",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(19, 65, 83, 1),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0.h, bottom: 5.0.h),
                          padding: EdgeInsets.only(right: 30.0.w),
                          child: CupertinoSwitch(
                            activeColor: Color.fromRGBO(46, 130, 139, 1),
                            value: _red,
                            onChanged: (bool value) {
                              setState(() {
                                _red = value;
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
                padding: EdgeInsets.only(top: 20.h, bottom: 7.h, left: 30.w),
                child: Text(
                  "Chat",
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1),
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
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
                          margin: EdgeInsets.only(top: 10.0.h, bottom: 5.0.h),
                          padding: EdgeInsets.only(right: 30.0.w),
                          child: CupertinoSwitch(
                            activeColor: Color.fromRGBO(46, 130, 139, 1),
                            value: _blue,
                            onChanged: (bool value) {
                              setState(() {
                                _blue = value;
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
          ),
          //nev bar
        ),
      ),
    );
  }
}
