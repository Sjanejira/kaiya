import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

import 'package:kaiya/patient_widget/calendar_widget.dart';

import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

class SetSchedule extends StatefulWidget {
  static const String id = '';
  @override
  _SetSchedule createState() => _SetSchedule();
}

class _SetSchedule extends State<SetSchedule> {
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
            title: Text('Schedule',
            style: TextStyle(
              color: Color.fromRGBO(19, 65, 83, 1),
              fontWeight: FontWeight.bold,
            ),),
            centerTitle: true,
            leading: Icon(CupertinoIcons.back,
            color: Color.fromRGBO(193, 193, 193, 1),),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                      ),
                      margin: EdgeInsets.only(top: 20),
                      child: KaiYaCalendar(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text('Recent Pill List',style: TextStyle(
                              color: Color.fromRGBO(193, 193, 193, 1)
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 250,
                          height: 1,
                          color: Color.fromRGBO(193, 193, 193, 1),
                        )
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 30),
                        width: 150,
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(10),topLeft: Radius.circular(10)),
                                color: Color.fromRGBO(239, 106, 1, 1),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('asset/ms.png'),
                                      fit: BoxFit.cover
                                    ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text('Buffered C',
                                      style: TextStyle(
                                        color: Color.fromRGBO(19, 65, 83, 1),
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                    Container(
                                      child: Text('1 pill/time',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('With food',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 30),
                        width: 150,
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(10),topLeft: Radius.circular(10)),
                                color: Color.fromRGBO(239, 106, 1, 1),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/ms.png'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text('Buffered C',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      child: Text('1 pill/time',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('With food',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 30),
                        width: 150,
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(10),topLeft: Radius.circular(10)),
                                color: Color.fromRGBO(239, 106, 1, 1),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/ms.png'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text('Buffered C',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      child: Text('1 pill/time',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('With food',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 30),
                        width: 150,
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(10),topLeft: Radius.circular(10)),
                                color: Color.fromRGBO(239, 106, 1, 1),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/ms.png'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text('Buffered C',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      child: Text('1 pill/time',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('With food',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 300,top: 50),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromRGBO(46, 130, 139, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Icon(CupertinoIcons.plus,color: Color.fromRGBO(255, 255, 255, 1),
                    size: 50,),
                  ),
                ],
              ),
            ),
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
