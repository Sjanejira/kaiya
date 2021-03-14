import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_talk_screen/talk_widget/picker_province.dart';

showDialogUpdateDelivery(context) {
  int selectedvalue;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 0.w),
        content: Container(
          width: 280.w,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                right: -10.0,
                child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: Color(0xffC1C1C1),
                    )),
              ),
              Wrap(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "UPDATE",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xff134153),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.h, bottom: 20.h),
                      child: Container(
                        padding: EdgeInsets.all(20.r),
                        decoration: BoxDecoration(
                            color: Color(0xff134153), shape: BoxShape.circle),
                        child: Icon(
                          CupertinoIcons.car,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      child: Text("Add Tracking Number"),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 7.h),
                            filled: true,
                            fillColor: Color(0xffEFEFEF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Tracking Number"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: 85.w, vertical: 10.h),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        color: Color(0xffEFEFEF),
                        onPressed: () => showPickerProvince(context),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Text(
                              "Province",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            Positioned(
                              right: -80.0,
                              top: -4,
                              child: Icon(
                                CupertinoIcons.chevron_down,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 7.h),
                            filled: true,
                            fillColor: Color(0xffEFEFEF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Tracking Number"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.w),
                      child: RaisedButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        color: Color.fromRGBO(46, 130, 139, 1.0),
                        textColor: Colors.white,
                        child: Text(
                          "DONE",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                      ),
                    )
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
