import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class SettingLanguages extends StatefulWidget {
  static const String id = 'pharma_payment';

  @override
  _SettingLanguages createState() => _SettingLanguages();
}

class _SettingLanguages extends State<SettingLanguages>
    with TickerProviderStateMixin {
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
              'Languages',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.h),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text(
                                "🇹🇭",
                                style: TextStyle(fontSize: 30.sp),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 8.w),
                            ),
                            Container(
                              child: Text(
                                "Thai",
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 65, 83, 1),
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          CupertinoIcons.checkmark_alt,
                        ),
                      ],
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
                        Row(
                          children: [
                            Container(
                              child: Text(
                                "🇬🇧",
                                style: TextStyle(fontSize: 30.sp),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 8.w),
                            ),
                            Container(
                              child: Text(
                                "English",
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 65, 83, 1),
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: PharmaNavBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: PharmaNavBarFloatingButton(),
        ),
      ),
    );
  }
}
