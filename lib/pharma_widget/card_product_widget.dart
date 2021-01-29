import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardProduct extends StatelessWidget {
  CardProduct(
      {this.image,
      this.productname,
      this.beforesale,
      this.aftersale,
      this.like,
      this.isonsale});

  final String image;
  final String productname;
  final int beforesale;
  final int aftersale;
  final int like;
  final bool isonsale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: GestureDetector(
            child: Card(
              color: Colors.white,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                height: 190.h,
                width: 147.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        child: Icon(CupertinoIcons.ellipsis),
                        onTap: () {
                          print('click3');
                        },
                      ),
                    ),
                    Image(
                      image: AssetImage(image),
                      height: 80.h,
                      width: 140.w,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          top: 10.h, left: 12.w, right: 12.w, bottom: 4.h),
                      child: Text(
                        productname,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 12.0.w),
                          child: Text(
                            "฿${this.beforesale}",
                            style: TextStyle(
                                fontSize: 12.sp,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey[400]),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 6.0.w),
                          child: Text(
                            "฿${this.aftersale}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(144, 46, 46, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 12.w),
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              CupertinoIcons.suit_heart_fill,
                              color: Color.fromRGBO(46, 130, 139, 1),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Text(
                              "${this.like}",
                              style: TextStyle(
                                fontSize: 8.sp,
                                color: Color.fromRGBO(46, 130, 139, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              print('click');
            },
          ),
        ),
        if (isonsale)
          Container(
            child: Icon(
              CupertinoIcons.bookmark_fill,
              color: Color.fromRGBO(144, 46, 46, 1),
            ),
            padding: EdgeInsets.only(left: 20.w),
          ),
      ],
    );
  }
}
