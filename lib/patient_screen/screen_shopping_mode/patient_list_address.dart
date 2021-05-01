import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class PatientAddress extends StatefulWidget {
  static const String id = 'patient_address';

  @override
  _PatientAddress createState() => _PatientAddress();
}

class _PatientAddress extends State<PatientAddress>
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
        top: true,
        bottom: true,
        child: Scaffold(
            appBar: AppBar(
              leading: Container(
                padding: EdgeInsets.only(left: 30.w),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromRGBO(193, 193, 193, 1),
                ),
              ),
              brightness: Brightness.light,
              title: const Text(
                'Edit Address',
                style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 8.0,
              actions: [
                Container(
                  padding: EdgeInsets.only(right: 30.w),
                  child: Icon(
                    Icons.add,
                    color: Color.fromRGBO(193, 193, 193, 1),
                  ),
                )
              ],
            ),
            body: Container(
              color: Color.fromRGBO(250, 250, 250, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 30.w, top: 10.w),
                                  child: Text(
                                    "Ravichaya  Ruenrom",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 10.w),
                                  child: Text(
                                    '0635955499',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 25.w, top: 10.w),
                                  child: Text('15/67 Liab Expressway Road,'),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 25.w),
                                  child: Text('Thung Khru, Bangkok'),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 25.w, bottom: 20.w),
                                  child: Text('10140'),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 25.w,bottom: 10.w),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Color.fromRGBO(46, 130, 139, 1),
                                        size: 18,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text('Default',style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                        ),),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Icon(
                            CupertinoIcons.right_chevron,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          floatingActionButton: PatientNavBarFloatingButtonCall(
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
              height: 60.h,
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
                            Icon(
                              CupertinoIcons.home,
                              color: Color.fromRGBO(46, 130, 139, 1),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.square_list,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
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
                            Icon(
                              CupertinoIcons.bell,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.person,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
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
            //nev bar
            ),
      ),
    );
  }
}
