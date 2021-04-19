import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/add_product_page/product_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';

class CardProduct extends StatelessWidget {
  CardProduct(
      {this.image,
      this.productname,
      this.beforesale,
      this.aftersale,
      this.like,
      this.isonsale,
      this.widget,
      this.product,
      this.viewModel});

  final String image;
  final String productname;
  final int beforesale;
  final int aftersale;
  final int like;
  final bool isonsale;
  final PharWelcome widget;
  final Product product;
  final PharmaFirstPageViewModel viewModel;

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
                      image: NetworkImage(image),
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
              print(product);
              widget.onPushProduct(context, product, viewModel);
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
