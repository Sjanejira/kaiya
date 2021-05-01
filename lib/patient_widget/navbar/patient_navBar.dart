import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      notchMargin: 5,
      shape: AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fill,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 30.0.w,
                    top: 5.0.h,
                  ),
                  child: IconButton(
                    color: Color.fromRGBO(46, 130, 139, 1.0),
                    icon: Icon(
                      CupertinoIcons.home,
                      size: 33.sp,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0.w,
                    top: 5.0.h,
                  ),
                  child: IconButton(
                    color: Color.fromRGBO(226, 226, 226, 1.0),
                    icon: Icon(
                      CupertinoIcons.square_list,
                      size: 33.sp,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                  margin: EdgeInsets.only(
                    right: 20.0.w,
                    top: 5.0.h,
                  ),
                  child: IconButton(
                    color: Color.fromRGBO(226, 226, 226, 1.0),
                    icon: Icon(
                      CupertinoIcons.bell,
                      size: 33.sp,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 30.0.w,
                  top: 5.0.h,
                ),
                child: IconButton(
                  color: Color.fromRGBO(226, 226, 226, 1.0),
                  icon: Icon(
                    CupertinoIcons.person,
                    size: 33.0.sp,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

