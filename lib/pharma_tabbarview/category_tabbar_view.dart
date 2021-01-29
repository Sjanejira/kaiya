import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: Column(
        children: [
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.tag,
                      color: Color.fromRGBO(19, 65, 83, 1),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "Medicine",
                        style: TextStyle(
                          color: Color.fromRGBO(19, 65, 83, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: Color.fromRGBO(193, 193, 193, 1),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: Divider(
              thickness: 1,
            ),
          ),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.scissors,
                      color: Color.fromRGBO(19, 65, 83, 1),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "External Use",
                        style: TextStyle(
                          color: Color.fromRGBO(19, 65, 83, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: Color.fromRGBO(193, 193, 193, 1),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: Divider(
              thickness: 1,
            ),
          ),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.textformat_alt,
                      color: Color.fromRGBO(19, 65, 83, 1),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "Supplymentary",
                        style: TextStyle(
                          color: Color.fromRGBO(19, 65, 83, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: Color.fromRGBO(193, 193, 193, 1),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
