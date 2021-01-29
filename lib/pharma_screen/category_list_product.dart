import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/card_product_widget.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class CategoryListProduct extends StatefulWidget {
  static const String id = 'pharma_category_list';

  @override
  _CategoryListProduct createState() => _CategoryListProduct();
}

class _CategoryListProduct extends State<CategoryListProduct>
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
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'Medicine',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: SingleChildScrollView(
            child: Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Wrap(
                  spacing: 10.w,
                  children: [
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
                      image: 'asset/ms.png',
                      productname: "MusicZa",
                      beforesale: 99,
                      aftersale: 100,
                      isonsale: true,
                    ),
                    CardProduct(
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
          bottomNavigationBar: PharmaNavBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: PharmaNavBarFloatingButton(),
        ),
      ),
    );
  }
}
