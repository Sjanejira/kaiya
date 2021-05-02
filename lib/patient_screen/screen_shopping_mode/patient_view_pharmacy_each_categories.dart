import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kaiya/patient_widget/navbar/patient_navBar.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/patient_widget/card_product_widget.dart';

class ViewPharmaMedicine extends StatefulWidget {
  static const String id = 'view_pharmacy_each_cate_medicine';
  @override
  _ViewPharmaMedicine createState() => _ViewPharmaMedicine();
}

class _ViewPharmaMedicine extends State<ViewPharmaMedicine> {
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
            title: Text(
              'Medicine',
              style: TextStyle(
                  color: Color.fromRGBO(46, 65, 83, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: 390,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 20.0,
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
