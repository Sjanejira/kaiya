import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/add_button.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PharProductDetail extends StatefulWidget {
  static const String id = 'pharma_product_detail';

  @override
  _PharProductDetail createState() => _PharProductDetail();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.h),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(226, 226, 226, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 10.0.w),
                        child: Text(
                          '${imgList.indexOf(item).toInt() + 1} / ${imgList.length}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class _PharProductDetail extends State<PharProductDetail> {
  int _current = 0;
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
              'Product',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
            actions: [Icon(CupertinoIcons.ellipsis)],
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
                  Container(
                    color: Colors.white,
                    child: CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                        viewportFraction: 1,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 35.0.w, top: 10.h),
                    child: Text(
                      "Vitamin",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.h),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 35.0.w, top: 5.h),
                              child: Text(
                                "฿700",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey[400]),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                  left: 6.0.w, right: 6.w, top: 5.h),
                              child: Text(
                                "฿1000000000",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5.h, right: 8.w),
                              child: Icon(
                                CupertinoIcons.share,
                                color: Color.fromRGBO(193, 193, 193, 1),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5.h, right: 30.w),
                              child: Icon(
                                CupertinoIcons.heart,
                                color: Color.fromRGBO(193, 193, 193, 1),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 30.0.w, top: 7.h, bottom: 7.h),
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10.h),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            CupertinoIcons.rocket,
                            color: Color.fromRGBO(46, 130, 139, 1),
                            size: 25.w,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            "Fast Delivery",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Color.fromRGBO(46, 130, 139, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    padding: EdgeInsets.only(left: 10.0.w, top: 10.h),
                    alignment: Alignment.centerLeft,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 35.0.w, top: 10.h, bottom: 5.h),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Product Detail",
                            style: TextStyle(
                              color: Color.fromRGBO(19, 65, 83, 1),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                              margin: EdgeInsets.only(
                                top: 13.0.h,
                              ),
                              padding: EdgeInsets.only(left: 35.0.w),
                              child: Text(
                                "Brand : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 13.0.h,
                              ),
                              padding: EdgeInsets.only(left: 5.0.w),
                              child: Text(
                                "Vistra",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                                  EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                              padding: EdgeInsets.only(left: 35.0.w),
                              child: Text(
                                "Detail : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.only(top: 13.0.h),
                                padding: EdgeInsets.only(
                                  bottom: 10.0.h,
                                  left: 5.0.w,
                                  right: 30.0.w,
                                ),
                                child: Text(
                                  "Blackmores Bilberry 2500 taken as a dietary supplement provides the nutritional value of bilberry extract.Provides anthocyanocides 9 mg/tablet from Bilberry extract 25 mg. Guaranteed standardized active substance",
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                      top: 10.h,
                      bottom: 20.0.h,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 40.w, right: 10.w),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('asset/ms.png'),
                              ),
                            ),
                            Container(
                              child: Text(
                                "MusicZa",
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 65, 83, 1),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 35.w),
                          child: OutlineButton(
                            onPressed: () {},
                            textColor: Color.fromRGBO(46, 130, 139, 1.0),
                            child: Text("View Shop"),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(46, 130, 139, 1.0),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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
}
