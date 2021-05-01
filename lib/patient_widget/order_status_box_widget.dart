import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderStatusBox extends StatelessWidget {
  OrderStatusBox({this.colororder, this.typeorder});

  final int colororder;
  final String typeorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Color(colororder),
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
        ),
      ),
      child: Text(
        typeorder,
        style: TextStyle(color: Colors.white, fontSize: 7.sp),
      ),
    );
  }
}
