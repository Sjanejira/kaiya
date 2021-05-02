import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kaiya/patient_widget/navbar/patient_navBar.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/patient_widget/card_product_widget.dart';

class ViewPharmaCategories extends StatefulWidget {
  static const String id = 'view_pharmacy_categories';
  @override
  _ViewPharmaCategories createState() => _ViewPharmaCategories();
}

class _ViewPharmaCategories extends State<ViewPharmaCategories> {
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
            elevation: 8.0,
            leading: Icon(
              CupertinoIcons.back,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  CupertinoIcons.search,
                  color: Color.fromRGBO(193, 193, 193, 1),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.cart,
                  color: Color.fromRGBO(193, 193, 193, 1),
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 390,
                      height: 120,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 35.r,
                                  backgroundImage: AssetImage('asset/ms.png'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'KaiMusic',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Icon(
                                              CupertinoIcons.location,
                                              color: Color.fromRGBO(46, 130, 139, 1),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Bangmod , Bangkok',
                                              style: TextStyle(
                                                color: Color.fromRGBO(46, 130, 139, 1),
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
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                  color: Color.fromRGBO(
                                    46,
                                    130,
                                    139,
                                    1,
                                  ),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'CHAT',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      child: Divider(
                        thickness: 1,
                        color: Color.fromRGBO(193, 193, 193, 1),
                      ),
                    ),
                    Container(
                      width: 390,
                      height: 40,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10),
                            width: 90,
                            height: 30,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text('Shop',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                    ),),
                                ),
                                Container(
                                  width: 80,
                                  height: 1,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10),
                            width: 90,
                            height: 30,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text('Product',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                    ),),
                                ),
                                Container(
                                  width: 80,
                                  height: 1,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10),
                            width: 90,
                            height: 30,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text('Categories',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                    ),),
                                ),
                                Container(
                                  width: 80,
                                  height: 1,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
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
                                CupertinoIcons.heart,
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: Text(
                                  "Medicine",
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
                                CupertinoIcons.bag,
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: Text(
                                  "External Use",
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
                                CupertinoIcons.shopping_cart,
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: Text(
                                  "Supplymentary",
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
}
