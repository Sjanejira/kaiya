import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class PatientAddAddress extends StatefulWidget {
  static const String id = 'patient_add_address';

  @override
  _PatientAddAddress createState() => _PatientAddAddress();
}

class _PatientAddAddress extends State<PatientAddAddress>
    with TickerProviderStateMixin {
  bool _lights = true;
  bool _darks = true;
  bool _blue = true;
  bool _red = true;
  bool _grey = true;
  int selectedValue;
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
            leading: Container(
              padding: EdgeInsets.only(left: 30.w),
              child: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(193, 193, 193, 1),
              ),
            ),
            brightness: Brightness.light,
            title: const Text(
              'New Address',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Color.fromRGBO(250, 250, 250, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.0.h),
                              padding: EdgeInsets.only(left: 30.0.w),
                              child: Text(
                                "Name : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0.h),
                                padding: EdgeInsets.only(left: 5.0.w),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Aomsin"),
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.0.h),
                              padding: EdgeInsets.only(left: 30.0.w),
                              child: Text(
                                "Phone : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0.h),
                                padding: EdgeInsets.only(left: 5.0.w),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: ""),
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.0.h),
                              padding: EdgeInsets.only(left: 30.0.w),
                              child: Text(
                                "Address : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0.h),
                                padding: EdgeInsets.only(left: 5.0.w),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: ""),
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                              padding: EdgeInsets.only(left: 30.0.w),
                              child: Text(
                                "District : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.only(left: 1.w, top: 2.h),
                                child: RaisedButton(
                                  elevation: 0,
                                  color: Colors.white,
                                  onPressed: showPicker,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Select",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Icon(
                                          CupertinoIcons.chevron_right,
                                          color: Colors.grey[350],
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                              padding: EdgeInsets.only(left: 30.0.w),
                              child: Text(
                                "Province : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.only(left: 1.w, top: 2.h),
                                child: RaisedButton(
                                  elevation: 0,
                                  color: Colors.white,
                                  onPressed: showPicker,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Select",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Icon(
                                          CupertinoIcons.chevron_right,
                                          color: Colors.grey[350],
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.0.h),
                              padding: EdgeInsets.only(left: 30.0.w),
                              child: Text(
                                "Zip Code : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0.h),
                                padding: EdgeInsets.only(left: 5.0.w),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: ""),
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0.h),
                              padding: EdgeInsets.only(right: 160.0.w),
                              child: Text(
                                "Set Default ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(19, 65, 83, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0.h),
                              padding: EdgeInsets.only(right: 20.0.w),
                              child: CupertinoSwitch(
                                activeColor: Color.fromRGBO(46, 130, 139, 1),
                                value: _blue,
                                onChanged: (bool value) {
                                  setState(() {
                                    _blue = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                          child: RaisedButton(
                            onPressed: () {},
                            padding: EdgeInsets.only(
                                left: 30.0,
                                right: 30.0,
                                top: 10.0,
                                bottom: 10.0),
                            color: Color.fromRGBO(46, 130, 139, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Text(
                              'DONE',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: PatientNavBarFloatingButtonCall(),
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
        ),
      ),
    );
  }

  showPicker() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300.0.h,
            child: CupertinoPicker(
              backgroundColor: Colors.white,
              onSelectedItemChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              itemExtent: 32.0,
              children: const [
                Text('Item01'),
                Text('Item02'),
                Text('Item03'),
              ],
            ),
          );
        });
  }
}
