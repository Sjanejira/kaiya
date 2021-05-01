import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';

class CardsaleProduct extends StatelessWidget {
  CardsaleProduct({
    this.image,
    this.productname,
    this.beforesale,
    this.aftersale,
    this.price,
    this.isonsale,
    this.widget,
  });

  final String image;
  final String productname;
  final int beforesale;
  final int aftersale;
  final int price;
  final bool isonsale;
  final PharWelcome widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: GestureDetector(
            child: Card(
              margin: EdgeInsets.all(15.0),
              color: Colors.white,
              elevation: 5.0, //shadow
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                //card size
                height: 175.h,
                width: 125.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 10.h, left: 20.w, right: 20.w, bottom: 5.h),
                    ),
                    Image(
                      image: AssetImage(image),
                      height: 80.h,
                      width: 100.w,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          top: 10.h, left: 10.w, right: 10.w, bottom: 3.h),
                      child: Text(
                        productname,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                    Row(
                      children: [
                        this.isonsale
                            ? Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 12.0.w),
                          child: Text(
                            "฿${this.beforesale}",
                            style: TextStyle(
                                fontSize: 12.sp,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey[400]),
                          ),
                        )
                            : Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 12.0.w),
                          child: Text(
                            "฿${this.beforesale}",
                            style: TextStyle(
                                fontSize: 12.sp, color: Colors.grey[400]),
                          ),
                        ),
                        this.isonsale
                            ? Container(
                          alignment: Alignment.centerLeft,
                          padding:
                          EdgeInsets.symmetric(horizontal: 6.0.w),
                          child: Text(
                            "฿${this.aftersale}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(144, 46, 46, 1),
                            ),
                          ),
                        )
                            : Container(),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10.w),
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 65.w ,right: 5.w),
                            alignment: Alignment.centerRight,
                            child: Icon(
                              CupertinoIcons.cart,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              print('click');
              widget.onPush(context, "productdetail");
            },
          ),
        ),
        if (isonsale)
          Container(
            child: Icon(
              CupertinoIcons.bookmark,
              color: Color.fromRGBO(144, 46, 46, 1),
            ),
            padding: EdgeInsets.only(top: 10.w,left: 20.w),
          ),
      ],
    );
  }
}

class CardnormalProduct extends StatelessWidget {
  CardnormalProduct({
    this.image,
    this.productname,
    this.price,
    this.isonsale,
    this.widget,
  });

  final String image;
  final String productname;
  final int price;
  final bool isonsale;
  final PharWelcome widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: GestureDetector(
            child: Card(
              margin: EdgeInsets.all(15.0),
              color: Colors.white,
              elevation: 5.0, //shadow
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                //card size
                height: 175.h,
                width: 125.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 10.h, left: 20.w, right: 20.w, bottom: 5.h),
                    ),
                    Image(
                      image: AssetImage(image),
                      height: 80.h,
                      width: 100.w,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          top: 10.h, left: 10.w, right: 10.w, bottom: 3.h),
                      child: Text(
                        productname,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                    Row(
                      children: [
                        this.isonsale
                            ? Container(
                          alignment: Alignment.centerLeft,
                          padding:
                          EdgeInsets.symmetric(horizontal: 6.0.w),
                          child: Text(
                            "฿${this.price}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(144, 46, 46, 1),
                            ),
                          ),
                        )
                            : Container(),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10.w),
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 65.w ,right: 5.w),
                            alignment: Alignment.centerRight,
                            child: Icon(
                              CupertinoIcons.cart,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              print('click');
              widget.onPush(context, "productdetail");
            },
          ),
        ),
        if (isonsale)
          Container(
            child: Icon(
              CupertinoIcons.bookmark,
              color: Color.fromRGBO(144, 46, 46, 1),
            ),
            padding: EdgeInsets.only(top: 10.w,left: 20.w),
          ),
      ],
    );
  }
}

