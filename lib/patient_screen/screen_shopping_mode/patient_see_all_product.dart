import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaiya/patient_widget/card_product_widget.dart';
import 'package:kaiya/patient_widget//navbar/patient_navBar.dart';
import 'package:kaiya/patient_widget//navbar/patient_navBarFloatinButton.dart';


class PatientSeeAllProduct extends StatefulWidget {
  static const String id = 'patient_all_product_list';

  @override
  _PatientSeeAllProduct createState() => _PatientSeeAllProduct();
}

class _PatientSeeAllProduct extends State<PatientSeeAllProduct>
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
      child: SafeArea(
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
                    size: 35.0,
                    color: Colors.grey),
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
            child: Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
              height: 70.h,
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

