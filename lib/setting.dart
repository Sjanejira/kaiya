import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class Setting extends StatefulWidget {
  static const String id = 'setting';
  Setting({this.onPush});
  final Function onPush;

  @override
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting> with TickerProviderStateMixin {
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
              'Setting',
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
                  "My Account",
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1),
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Account",
                            style: TextStyle(
                              color: Color.fromRGBO(19, 65, 83, 1),
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: Color.fromRGBO(193, 193, 193, 1),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => widget.onPush(context, "managepayment"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Payment",
                              style: TextStyle(
                                color: Color.fromRGBO(19, 65, 83, 1),
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 20.h, bottom: 7.h, left: 30.w),
                child: Text(
                  "Setting",
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1),
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => widget.onPush(context, "navigationsetting"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Notification",
                              style: TextStyle(
                                color: Color.fromRGBO(19, 65, 83, 1),
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Languages",
                            style: TextStyle(
                              color: Color.fromRGBO(19, 65, 83, 1),
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: Color.fromRGBO(193, 193, 193, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20.h),
                  child: OutlineButton(
                    onPressed: () {},
                    textColor: Color.fromRGBO(144, 46, 46, 1.0),
                    child: Text("Log Out"),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(144, 46, 46, 1.0),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
