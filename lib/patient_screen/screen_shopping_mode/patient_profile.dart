import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class PatientProfile extends StatefulWidget {
  static const String id = 'patient_profile';

  @override
  _PatientProfile createState() => _PatientProfile();
}

class _PatientProfile extends State<PatientProfile>
    with TickerProviderStateMixin {
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
              margin: EdgeInsets.only(left: 20.w),
              child: Icon(
                CupertinoIcons.gear,
                color: Color.fromRGBO(193, 193, 193, 1),
              ),
            ),
            brightness: Brightness.light,
            title: const Text(
              'Profile',
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
                padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
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
                      padding: EdgeInsets.only(top: 15.h, bottom: 6.h),
                      child: Text("RavichMs"),
                    ),
                    RaisedButton(
                      elevation: 0,
                      textColor: Colors.white,
                      color: Color.fromRGBO(46, 130, 139, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "My Orders",
                            style: TextStyle(
                              color: Color.fromRGBO(46, 130, 139, 1),
                            ),
                          ),
                          padding: EdgeInsets.only(left: 30.w),
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(
                                CupertinoIcons.right_chevron,
                                size: 10.w,
                                color: Color.fromRGBO(193, 193, 193, 1),
                              ),
                              padding: EdgeInsets.only(right: 30.w, left: 5.w),
                            ),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 6.w,
                                    bottom: 6.w,
                                    right: 6.w,
                                    left: 10.w),
                                child: Column(
                                  children: [
                                    Icon(
                                      CupertinoIcons.money_dollar_circle,
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                    Text(
                                      "Pay",
                                      style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 22.w,
                                child: Container(
                                  padding: EdgeInsets.all(4.r),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                      shape: BoxShape.circle),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6.r),
                                child: Column(
                                  children: [
                                    Icon(
                                      CupertinoIcons.cube_box,
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                    Text(
                                      "Preparing",
                                      style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 15.w,
                                child: Container(
                                  padding: EdgeInsets.all(4.r),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                      shape: BoxShape.circle),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6.r),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.local_shipping_outlined,
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                    Text(
                                      "Shipping",
                                      style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 15.w,
                                bottom: 30.w,
                                child: Container(
                                  padding: EdgeInsets.all(4.r),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                      shape: BoxShape.circle),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6.r),
                                child: Column(
                                  children: [
                                    Icon(
                                      CupertinoIcons.checkmark_seal,
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                    Text(
                                      "Success",
                                      style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 15.w,
                                child: Container(
                                  padding: EdgeInsets.all(4.r),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                      shape: BoxShape.circle),
                                  child: Text(
                                    "1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
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
                                "Wishlist",
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
                                "Buy Again",
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
                                "Promotion",
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
          //add nev bar
        ),
      ),
    );
  }
}
