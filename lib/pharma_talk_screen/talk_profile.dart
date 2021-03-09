import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TalkProfile extends StatefulWidget {
  static const String id = 'talk_profile';

  @override
  _TalkProfile createState() => _TalkProfile();
}

class _TalkProfile extends State<TalkProfile> with TickerProviderStateMixin {
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
            leading: Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Icon(
                CupertinoIcons.gear,
                color: Color.fromRGBO(193, 193, 193, 1),
              ),
            ),
            brightness: Brightness.light,
            title: const Text(
              'Profile',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 65.r,
                      backgroundImage: AssetImage('asset/ms.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                      child: Text(
                        "MusicZa",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.person,
                              color: Color.fromRGBO(19, 65, 83, 1),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.w),
                              child: Text(
                                "Account",
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 65, 83, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: Color.fromRGBO(193, 193, 193, 1),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.money_dollar_circle,
                              color: Color.fromRGBO(19, 65, 83, 1),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.w),
                              child: Text(
                                "My Shipping",
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 65, 83, 1),
                                ),
                              ),
                            ),
                          ],
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
            ],
          ),
        ),
      ),
    );
  }
}
