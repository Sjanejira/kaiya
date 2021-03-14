import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showDialogPatientCall(context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 0.w),
        content: Container(
          width: 280.w,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Wrap(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "On the phone",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.h),
                      child: CircleAvatar(
                        radius: 65.r,
                        backgroundImage: AssetImage('asset/ms.png'),
                      ),
                    ),
                    Text(
                      "Queue#1",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w200),
                    ),
                    Text(
                      "0:02",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w200),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70.0,
                      child: ElevatedButton(
                        child: Icon(
                          CupertinoIcons.phone_fill,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff902E2E),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ])
            ],
          ),
        ),
      );
    },
  );
}
