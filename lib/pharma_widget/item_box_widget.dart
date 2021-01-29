import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBox extends StatelessWidget {
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
                    "MusicZa",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  isonsale
                      ? Row(
                          children: [
                            Text(
                              "฿ 12",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Color.fromRGBO(193, 193, 193, 1),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 4.w),
                              child: Text(
                                "฿ 13",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Color(0xff902E2E),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Text(
                          "฿ 12",
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
