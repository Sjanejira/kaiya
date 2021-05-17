import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class PillInfo extends StatefulWidget {
  static const String id = 'patient_pill_info';
  @override
  _PillInfo createState() => _PillInfo();
}

class _PillInfo extends State<PillInfo> {
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
            leading: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            title: Text(
              'Pill Information',
              style: TextStyle(
                color: Color.fromRGBO(19, 65, 83, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    CupertinoIcons.checkmark,
                    color: Color.fromRGBO(19, 65, 83, 1),
                  ),
                  onPressed: () {})
            ],
            elevation: 8.0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/ms.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Change Picture',
                          style:
                              TextStyle(color: Color.fromRGBO(46, 130, 139, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 390,
                  height: 450,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Pill Name',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Text(
                                  'Buffered C',
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 90),
                            width: 250,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Quantity',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 35),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 140),
                                child: Text(
                                  'Pill/Time',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 90),
                            width: 250,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Time',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 60),
                                child: Text(
                                  'With Food',
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 90),
                            width: 250,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Frequency',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 140),
                                child: Text(
                                  'Times/Day',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 90),
                            width: 250,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Reminder',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 90),
                            width: 250,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 35,
                                margin: EdgeInsets.only(left: 60),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.calendar,
                                        color: Color.fromRGBO(19, 65, 83, 1),
                                      ),
                                      Text(
                                        'Choose Date',
                                        style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 90),
                            width: 250,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Dosage',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 45),
                                child: Text(
                                  '31',
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 140),
                                child: Text(
                                  'Tablets',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 90),
                            width: 250,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Color Card',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(96, 13, 125, 1),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
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
