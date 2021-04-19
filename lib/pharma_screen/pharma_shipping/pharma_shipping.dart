import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmaShipping extends StatefulWidget {
  static const String id = 'pharma_shipping';

  @override
  _PharmaShipping createState() => _PharmaShipping();
}

class _PharmaShipping extends State<PharmaShipping>
    with TickerProviderStateMixin {
  bool _greys = true;
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
              'My Shipping',
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
                padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  child: Image(
                                    image: AssetImage('asset/ms.png'),
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 2.0.h),
                                        padding: EdgeInsets.only(left: 5.0.w),
                                        child: Text(
                                          "Express delivery",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5.0.w),
                                        child: Text(
                                          "Receive on this day",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Color.fromRGBO(
                                                193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 60.w,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 5.0.w),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 7.h),
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(226, 226, 226, 1),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.r),
                                          ),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText: "Price"),
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Text("฿"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 5.0.h, bottom: 5.0.h),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _greys,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _greys = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  child: Image(
                                    image: AssetImage('asset/ms.png'),
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 2.0.h),
                                        padding: EdgeInsets.only(left: 5.0.w),
                                        child: Text(
                                          "Register - Thailand Post",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5.0.w),
                                        child: Text(
                                          "Receive in 3-7 days",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Color.fromRGBO(
                                                193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 60.w,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 5.0.w),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 7.h),
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(226, 226, 226, 1),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.r),
                                          ),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText: "Price"),
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Text("฿"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 5.0.h, bottom: 5.0.h),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _greys,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _greys = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  child: Image(
                                    image: AssetImage('asset/ms.png'),
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 2.0.h),
                                        padding: EdgeInsets.only(left: 5.0.w),
                                        child: Text(
                                          "Ems - Thailand Post",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5.0.w),
                                        child: Text(
                                          "Receive in 1-3 days",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Color.fromRGBO(
                                                193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 60.w,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 5.0.w),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 7.h),
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(226, 226, 226, 1),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.r),
                                          ),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText: "Price"),
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Text("฿"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 5.0.h, bottom: 5.0.h),
                                  child: CupertinoSwitch(
                                    activeColor:
                                        Color.fromRGBO(46, 130, 139, 1),
                                    value: _greys,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _greys = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
