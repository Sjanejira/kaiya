import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_items_model.dart';

class ItemBox extends StatelessWidget {
  ItemBox({this.item});
  final Items item;
  bool isonsale = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 7,
                    offset: Offset(1, 3), // changes position of shadow
                  ),
                ],
              ),
              width: 50.w,
              height: 50.w,
              child: Image(image: AssetImage('asset/ms.png')),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.item_name,
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  isonsale
                      ? Row(
                          children: [
                            Text(
                              "฿ ${item.item_price - 3}",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Color.fromRGBO(193, 193, 193, 1),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 4.w),
                              child: Text(
                                "฿ ${item.item_price}",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Color(0xff902E2E),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Text(
                          "฿ ${item.item_price}",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 16.w),
          child: Text(
            "x2",
            style: TextStyle(
                fontSize: 10.sp, color: Color.fromRGBO(193, 193, 193, 1)),
          ),
        ),
      ],
    );
  }
}
