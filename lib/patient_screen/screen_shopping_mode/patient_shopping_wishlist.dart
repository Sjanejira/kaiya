import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/card_product_widget.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class ShoppingWishlist extends StatefulWidget {
  static const String id = 'patient_wishlist';

  @override
  _ShoppingWishlist createState() => _ShoppingWishlist();
}

class _ShoppingWishlist extends State<ShoppingWishlist> {
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
          child: Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(193, 193, 193, 1),
              ),
              title: Text(
                'Wishlist',
                style: TextStyle(
                  color: Color.fromRGBO(19, 65, 83, 1),
                ),
              ),
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
        ));
  }
}
