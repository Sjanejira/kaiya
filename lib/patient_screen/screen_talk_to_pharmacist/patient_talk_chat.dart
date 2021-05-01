import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PaitentChat extends StatefulWidget {
  static const String id = 'patient_chat_with_pharma';
  @override
  _PaitentChat createState() => _PaitentChat();
}

class _PaitentChat extends State<PaitentChat> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery
          .of(context)
          .size
          .width,
      minWidth: 0,
      maxHeight: MediaQuery
          .of(context)
          .size
          .height,
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
            brightness: Brightness.light,
            title: const Text(
              'Chat',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Container(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage('asset/3782@3x.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "12:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Waiting update order",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color:
                                                Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 130),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          ),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage('asset/3782-2.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text(
                                            "Health Pharmacy",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Waiting check order",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color:
                                                Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 135),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "1",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          ),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //nev bar
        ),
      ),
    );
  }
}
