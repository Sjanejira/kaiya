import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';
import 'package:provider/provider.dart';

class PharmaProfile extends StatefulWidget {
  static const String id = 'pharma_profile';
  PharmaProfile({this.onPush, this.onPushMySale});
  final Function onPush;
  final Function onPushMySale;

  @override
  _PharmaProfile createState() => _PharmaProfile();
}

class _PharmaProfile extends State<PharmaProfile>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () => widget.onPush(context, "setting"),
              child: Container(
                margin: EdgeInsets.only(left: 20.w),
                child: Icon(
                  CupertinoIcons.gear,
                  color: Color.fromRGBO(193, 193, 193, 1),
                ),
              ),
            ),
            brightness: Brightness.light,
            title: const Text(
              'Profile',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Column(
            children: [
              StreamBuilder(
                  stream: Provider.of<PharMaService2>(context).getProfile(),
                  builder: (BuildContext context,
                      AsyncSnapshot<PharProfile> snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        margin: EdgeInsets.only(top: 10.h),
                        padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
                        color: Colors.white,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 43.r,
                              backgroundImage:
                                  NetworkImage(snapshot.data.imageUrl),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15.h, bottom: 6.h),
                              child: Text(snapshot.data.pharmacy_name),
                            ),
                            RaisedButton(
                              elevation: 0,
                              textColor: Colors.white,
                              color: Color.fromRGBO(46, 130, 139, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Text(
                                  "Edit Profile",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ),
                              onPressed: () {
                                widget.onPush(context, "editprofile");
                              },
                            ),
                          ],
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "My Sales",
                            style: TextStyle(
                              color: Color.fromRGBO(46, 130, 139, 1),
                            ),
                          ),
                          padding: EdgeInsets.only(left: 30.w),
                        ),
                        GestureDetector(
                          onTap: () => widget.onPushMySale(context, 0),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                  ),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  CupertinoIcons.right_chevron,
                                  size: 10.w,
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                ),
                                padding:
                                    EdgeInsets.only(right: 30.w, left: 5.w),
                              ),
                            ],
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    StreamBuilder(
                        stream: Provider.of<PharMaService2>(context).getOrder(),
                        builder: (BuildContext context,
                            AsyncSnapshot<List<Order>> snapshot) {
                          if (snapshot.hasData) {
                            return Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            widget.onPushMySale(context, 0),
                                        child: Container(
                                          padding: EdgeInsets.all(6.r),
                                          child: Column(
                                            children: [
                                              Icon(
                                                CupertinoIcons.cube_box,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                              Text(
                                                "Preparing",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 15.w,
                                        child: Container(
                                          padding: EdgeInsets.all(4.r),
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  144, 46, 46, 1),
                                              shape: BoxShape.circle),
                                          child: Text(
                                            "1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            widget.onPushMySale(context, 1),
                                        child: Container(
                                          padding: EdgeInsets.all(6.r),
                                          child: Column(
                                            children: [
                                              Icon(
                                                CupertinoIcons.rocket,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                              Text(
                                                "Shipping",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 15.w,
                                        child: Container(
                                          padding: EdgeInsets.all(4.r),
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  144, 46, 46, 1),
                                              shape: BoxShape.circle),
                                          child: Text(
                                            "1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            widget.onPushMySale(context, 2),
                                        child: Container(
                                          padding: EdgeInsets.all(6.r),
                                          child: Column(
                                            children: [
                                              Icon(
                                                CupertinoIcons
                                                    .checkmark_alt_circle,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                              Text(
                                                "Completed",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 15.w,
                                        child: Container(
                                          padding: EdgeInsets.all(4.r),
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  144, 46, 46, 1),
                                              shape: BoxShape.circle),
                                          child: Text(
                                            "1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            widget.onPushMySale(context, 3),
                                        child: Container(
                                          padding: EdgeInsets.all(6.r),
                                          child: Column(
                                            children: [
                                              Icon(
                                                CupertinoIcons
                                                    .exclamationmark_triangle,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                              Text(
                                                "Cancelled",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 15.w,
                                        child: Container(
                                          padding: EdgeInsets.all(4.r),
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  144, 46, 46, 1),
                                              shape: BoxShape.circle),
                                          child: Text(
                                            "1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => widget.onPush(context, "shipping"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.rocket,
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: Text(
                                  "My Shipping",
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => widget.onPush(context, "myorder"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.square_list,
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: Text(
                                  "My Orders",
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
