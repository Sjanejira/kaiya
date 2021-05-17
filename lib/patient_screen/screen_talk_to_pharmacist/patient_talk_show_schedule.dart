import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

import 'package:kaiya/patient_widget/calendar_widget.dart';

class ShowSchedule extends StatefulWidget {
  static const String id = 'show_all_schedule';
  @override
  _ShowSchedule createState() => _ShowSchedule();
}

class _ShowSchedule extends State<ShowSchedule> {
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 390,
                height: 400,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset.fromDirection(0, -2))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(
                              CupertinoIcons.back,
                              color: Color.fromRGBO(193, 193, 193, 1),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Today 14 April , 2021',
                              style: TextStyle(
                                color: Color.fromRGBO(19, 65, 83, 1),
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(
                              CupertinoIcons.forward,
                              color: Color.fromRGBO(193, 193, 193, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            height: 50,
                            width: 330,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 5,
                                  height: 55,
                                  color: Color.fromRGBO(239, 106, 1, 1),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Buffered C',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      19, 65, 83, 1),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 20),
                                              child: Text(
                                                '1 pill/time',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        19, 65, 83, 1),
                                                    fontSize: 15
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 305,
                                        margin: EdgeInsets.only(top: 10,left: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                'With food ',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        46, 130, 139, 1),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '10:00 AM',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                  fontSize: 15
                                                ),
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
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 330,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            height: 50,
                            width: 330,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 5,
                                  height: 55,
                                  color: Color.fromRGBO(25, 96, 178, 1),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Vitamin B',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        19, 65, 83, 1),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 20),
                                              child: Text(
                                                '1 pill/time',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        19, 65, 83, 1),
                                                    fontSize: 15
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 305,
                                        margin: EdgeInsets.only(top: 10,left: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                'After food/With food ',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      46, 130, 139, 1),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '10:00 AM',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        193, 193, 193, 1),
                                                    fontSize: 15
                                                ),
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
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 330,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            height: 50,
                            width: 330,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 5,
                                  height: 55,
                                  color: Color.fromRGBO(239, 106, 1, 1),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Buffered C',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        19, 65, 83, 1),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 20),
                                              child: Text(
                                                '1 pill/time',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        19, 65, 83, 1),
                                                    fontSize: 15
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 305,
                                        margin: EdgeInsets.only(top: 10,left: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                'With food ',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      46, 130, 139, 1),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '10:00 AM',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        193, 193, 193, 1),
                                                    fontSize: 15
                                                ),
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
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 330,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
          floatingActionButton: PatientNavBarFloatingButtonShop(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
            ),
            notchMargin: 5,
            color: Colors.white,
            elevation: 10.0,
            child: Container(
              height: 50.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                CupertinoIcons.home,
                                color: Color.fromRGBO(46, 130, 139, 1),
                                size: 33.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text,
                                color: Color.fromRGBO(226, 226, 226, 1.0),
                                size: 33.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                CupertinoIcons.bell,
                                color: Color.fromRGBO(226, 226, 226, 1.0),
                                size: 33.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                CupertinoIcons.person,
                                color: Color.fromRGBO(226, 226, 226, 1.0),
                                size: 33.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
