import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class EmergencyHome extends StatefulWidget {
  static const String id = 'patient_emergency';
  @override
  _EmergencyHome createState() => _EmergencyHome();
}

class _EmergencyHome extends State<EmergencyHome> {
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
        top: true,
        bottom: true,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
            leading: Icon(
              CupertinoIcons.back,
              size: 30,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            title: Text(
              'Emergency',
              style: TextStyle(color: Color.fromRGBO(144, 46, 46, 1)),
            ),
          ),
          body: Column(
            children: [
              Container(
                width: 390,
                height: 300,
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('asset/ms.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              blurRadius: 2)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 390,
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'KaiYa Pharmacy',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star_rounded,
                                    color: Color.fromRGBO(253, 211, 97, 1),
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Icon(
                                          CupertinoIcons.time,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '20 mins',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Icon(
                                          CupertinoIcons.location_solid,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '1.0 km.',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.local_shipping_outlined,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '฿10',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 110),
                                  child: Icon(
                                    CupertinoIcons.info_circle_fill,
                                    color: Color.fromRGBO(144, 46, 46, 1),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(144, 46, 46, 1),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              blurRadius: 2)
                        ],
                      ),
                      child: Icon(
                        Icons.phone,
                        size: 100,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(144, 46, 46, 1),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              blurRadius: 2)
                        ],
                      ),
                      child: Icon(
                        CupertinoIcons.video_camera_solid,
                        size: 100,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 390,
                height: 80,
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Emergency Mode will find a pharmacy nearby you auto',
                      style: TextStyle(
                          color: Color.fromRGBO(193, 193, 193, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'If you need to choose a pharmacy by yourself',
                      style: TextStyle(
                        color: Color.fromRGBO(193, 193, 193, 1),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'please back to home page',
                      style: TextStyle(
                        color: Color.fromRGBO(193, 193, 193, 1),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
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
