import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_widget/card_product_widget.dart';

class ShopTabBarView extends StatelessWidget {
  ShopTabBarView({this.widget});
  final PharWelcome widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      margin: EdgeInsets.only(top: 10.0.h),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.w, bottom: 10.h, top: 10.h),
            alignment: Alignment.centerLeft,
            child: Text(
              "New Arrivals",
              style: TextStyle(
                  color: Color.fromRGBO(144, 46, 46, 1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: 0.7,
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                CardProduct(
                  image: 'asset/ms.png',
                  productname: "MusicZa",
                  beforesale: 700,
                  aftersale: 230,
                  like: 100,
                  isonsale: true,
                  widget: widget,
                ),
                CardProduct(
                  image: 'asset/ms.png',
                  productname: "MusicZa",
                  beforesale: 700,
                  aftersale: 230,
                  like: 100,
                  isonsale: true,
                ),
                CardProduct(
                  image: 'asset/ms.png',
                  productname: "MusicZa",
                  beforesale: 700,
                  aftersale: 230,
                  like: 100,
                  isonsale: true,
                ),
                CardProduct(
                  image: 'asset/ms.png',
                  productname: "MusicZa",
                  beforesale: 700,
                  aftersale: 230,
                  like: 100,
                  isonsale: true,
                ),
                CardProduct(
                  image: 'asset/pon.png',
                  productname: "Pon",
                  beforesale: 700,
                  aftersale: 230,
                  like: 100,
                  isonsale: true,
                ),
                CardProduct(
                  image: 'asset/as.png',
                  productname: "As",
                  beforesale: 1400,
                  aftersale: 10000000,
                  like: 103242340,
                  isonsale: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
