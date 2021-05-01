import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaiya/patient_widget/card_product_widget.dart';
import 'package:kaiya/patient_widget//navbar/patient_navBar.dart';
import 'package:kaiya/patient_widget//navbar/patient_navBarFloatinButton.dart';

class PatientSelectEachCategories extends StatefulWidget {
  static const String id = 'patient_select_each_categories';

  @override
  _PatientSelectEachCategories createState() => _PatientSelectEachCategories();
}

class _PatientSelectEachCategories extends State<PatientSelectEachCategories>
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
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
            leading: IconButton(
              icon: const Icon(
                CupertinoIcons.chevron_back,
                size: 35.0,
                color: Colors.grey,
              ),
            ),
            leadingWidth: 70.0,
            actions: <Widget>[
              IconButton(
                icon: const Icon(CupertinoIcons.search,
                    size: 35.0, color: Colors.grey),
              ),
              IconButton(
                icon: const Icon(
                  CupertinoIcons.cart,
                  size: 35.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(
                bottom: 50.0.h,
              ),
              padding: EdgeInsets.only(bottom: 10.0.h),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 40.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  color: Colors.white,
                                  elevation: 2.0, //shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.medical_services,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Medicine',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  color: Colors.white,
                                  elevation: 2.0, //shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.handyman,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'External Use',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  color: Colors.white,
                                  elevation: 2.0, //shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.clean_hands,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Health Product',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  color: Colors.white,
                                  elevation: 2.0, //shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.power,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Cosmeceuticals',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  color: Colors.white,
                                  elevation: 2.0, //shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.medical_services,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Skincare',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  color: Colors.white,
                                  elevation: 2.0, //shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.sanitizer,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Supplementary',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  color: Colors.white,
                                  elevation: 2.0, //shadow
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.masks,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Equipment',
                                    style: TextStyle(
                                      fontSize: 10.0,
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
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10.0,
                          direction: Axis.horizontal,
                          children: [
                            CardsaleProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              beforesale: 99,
                              aftersale: 100,
                              isonsale: true,
                            ),
                            CardnormalProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              price: 100,
                              isonsale: true,
                            ),
                            CardnormalProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              price: 100,
                              isonsale: true,
                            ),
                            CardsaleProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              beforesale: 99,
                              aftersale: 100,
                              isonsale: true,
                            ),
                            CardsaleProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              beforesale: 99,
                              aftersale: 100,
                              isonsale: true,
                            ),
                            CardsaleProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              beforesale: 99,
                              aftersale: 100,
                              isonsale: true,
                            ),
                            CardsaleProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              beforesale: 99,
                              aftersale: 100,
                              isonsale: true,
                            ),
                            CardsaleProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              beforesale: 99,
                              aftersale: 100,
                              isonsale: true,
                            ),
                            CardsaleProduct(
                              image: 'asset/ms.png',
                              productname: "MusicZa",
                              beforesale: 99,
                              aftersale: 100,
                              isonsale: true,
                            ),
                          ],
                        ),
                      ),
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
        ),
      ),
    );
  }
}
