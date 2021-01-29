import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/add_button.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';

class PharmaEditAcccount extends StatefulWidget {
  static const String id = 'pharma_edit_account';

  @override
  _PharmaEditAcccount createState() => _PharmaEditAcccount();
}

class _PharmaEditAcccount extends State<PharmaEditAcccount> {
  bool _lights = true;
  bool _darks = true;
  bool _greys = true;
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
      allowFontScaling: true,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'Edit Profile',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(
                top: 10.0.h,
                bottom: 50.0.h,
              ),
              padding: EdgeInsets.only(bottom: 10.0.h),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    padding: EdgeInsets.only(top: 30.h),
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 43.r,
                          backgroundImage: AssetImage('asset/ms.png'),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.h, bottom: 6.h),
                          child: Text(
                            "Change Picture",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(193, 193, 193, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Shop Name : ",
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
                                hintText: "Shop name"),
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
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Address"),
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
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Road : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Road"),
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
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
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
                          padding: EdgeInsets.only(right: 20.w, top: 2.h),
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.white,
                            onPressed: showPicker,
                            child: Row(
                              children: [
                                Text(
                                  "Bangmod",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                Icon(
                                  CupertinoIcons.chevron_right,
                                  color: Colors.grey[350],
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
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
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
                          padding: EdgeInsets.only(right: 20.w, top: 2.h),
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.white,
                            onPressed: showPicker,
                            child: Row(
                              children: [
                                Text(
                                  "Bangkok",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                Icon(
                                  CupertinoIcons.chevron_right,
                                  color: Colors.grey[350],
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
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
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
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Zip Code"),
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
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
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
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Phone"),
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
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Email : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Email"),
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
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Password : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Password"),
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    child: RaisedButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(0.0),
                      color: Color.fromRGBO(46, 130, 139, 1.0),
                      textColor: Colors.white,
                      child: Text("DONE"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: PharmaNavBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: PharmaNavBarFloatingButton(),
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
