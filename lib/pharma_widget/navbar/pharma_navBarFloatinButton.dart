import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';

class PharmaNavBarFloatingButton extends StatelessWidget {
  PharmaNavBarFloatingButton({this.creatRoute});
  final Function creatRoute;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(0.0, 5.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(100.r),
        ),
      ),
      width: 80.0.sp,
      height: 80.0.sp,
      child: RawMaterialButton(
        shape: CircleBorder(),
        elevation: 10.0,
        child: Icon(
          CupertinoIcons.chat_bubble_text,
          size: 33.sp,
          color: Color.fromRGBO(226, 226, 226, 1.0),
        ),
        onPressed: () {
          Navigator.of(context).push(creatRoute());
        },
      ),
    );
  }
}
