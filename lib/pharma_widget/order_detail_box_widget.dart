import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/item_box_widget.dart';
import 'package:kaiya/pharma_widget/order_status_box_widget.dart';

class OrderDetailWidget extends StatelessWidget {
  OrderDetailWidget({this.typeoforder});

  final int typeoforder;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundImage: AssetImage('asset/ms.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MusicZa",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Text(
                          "#OrderID : 112",
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
              if (typeoforder == OrderStatus.preparing.index)
                OrderStatusBox(
                  colororder: 0xff902e2e,
                  typeorder: "PREPARING",
                ),
              if (typeoforder == OrderStatus.shipping.index)
                OrderStatusBox(
                  colororder: 0xff2E828B,
                  typeorder: "SHIPPING",
                ),
              if (typeoforder == OrderStatus.completed.index)
                OrderStatusBox(
                  colororder: 0xff134153,
                  typeorder: "SUCCESS",
                ),
              if (typeoforder == OrderStatus.cancelled.index)
                OrderStatusBox(
                  colororder: 0xff000000,
                  typeorder: "CANCELLED",
                ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            child: Divider(
              thickness: 1,
            ),
          ),
          Column(
            children: [
              ItemBox(),
              ShippingDivider(),
              // Container(
              //   padding: EdgeInsets.symmetric(vertical: 10.h),
              // )
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Total : ",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    "฿ 1222 ",
                    style: TextStyle(
                        color: Color.fromRGBO(144, 46, 46, 1),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                          color: Color(0xff134153), shape: BoxShape.circle),
                      child: Icon(
                        CupertinoIcons.cube_box,
                        color: Colors.white,
                      ),
                    ),
                    typeoforder == OrderStatus.preparing.index
                        ? IconUnupdated()
                        : IconUpdated(),
                  ],
                ),
                Row(
                  children: [
                    OutlineButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding:
                                  EdgeInsets.symmetric(horizontal: 0.w),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "SLIP PAYMENT",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Color(0xff134153),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 8.h),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Image(
                                              image: AssetImage('asset/ms.png'))
                                        ],
                                      ),
                                    ])
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text("VIEW SLIP"),
                      color: Color(0xff2E828B),
                      textColor: Color(0xff2E828B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                      borderSide: BorderSide(color: Color(0xff2E828B)),
                    ),
                    if (typeoforder == OrderStatus.preparing.index)
                      Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: RaisedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  insetPadding:
                                      EdgeInsets.symmetric(horizontal: 0.w),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "UPDATE",
                                                style: TextStyle(
                                                    fontSize: 15.sp,
                                                    color: Color(0xff134153),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 8.h),
                                                child: Divider(
                                                  thickness: 1,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 10.h, bottom: 20.h),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(8.r),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff134153),
                                                          shape:
                                                              BoxShape.circle),
                                                      child: Icon(
                                                        CupertinoIcons.cube_box,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(2.w),
                                                      child: Icon(
                                                        CupertinoIcons.ellipsis,
                                                        color:
                                                            Color(0xff2E828B),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(8.r),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff2E828B),
                                                          shape:
                                                              BoxShape.circle),
                                                      child: Icon(
                                                        CupertinoIcons.rocket,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 10.h),
                                                child:
                                                    Text("Add Tracking Number"),
                                              ),
                                              TextField(
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7.h),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xffFAFAFA),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(10.r),
                                                      ),
                                                      borderSide:
                                                          BorderSide.none,
                                                    ),
                                                    hintText:
                                                        "Tracking Number"),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 13.w),
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w),
                                                  color: Color.fromRGBO(
                                                      46, 130, 139, 1.0),
                                                  textColor: Colors.white,
                                                  child: Text(
                                                    "DONE",
                                                    style: TextStyle(
                                                        fontSize: 10.sp),
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0.r),
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
                          },
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          color: Color.fromRGBO(46, 130, 139, 1.0),
                          textColor: Colors.white,
                          child: Text(
                            "UPDATE",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0.r),
                          ),
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconUnupdated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(2.w),
          child: Icon(
            CupertinoIcons.ellipsis,
            color: Color(0xff2E828B),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.r),
          decoration:
              BoxDecoration(color: Color(0xff2E828B), shape: BoxShape.circle),
          child: Icon(
            CupertinoIcons.rocket,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class IconUpdated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(2.w),
          child: Icon(
            CupertinoIcons.ellipsis,
            color: Color(0xff134153),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.r),
          decoration:
              BoxDecoration(color: Color(0xff134153), shape: BoxShape.circle),
          child: Icon(
            CupertinoIcons.rocket,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class ShippingDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.h, bottom: 1.h),
          child: Divider(
            thickness: 1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.w, right: 20.w),
                  child: Icon(
                    CupertinoIcons.rocket,
                    color: Color.fromRGBO(193, 193, 193, 1),
                  ),
                ),
                Text(
                  "Kerry",
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
            Text(
              "฿ 400",
              style: TextStyle(
                fontSize: 10.sp,
                color: Color(0xff902E2E),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 1.h, bottom: 10.h),
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

enum OrderStatus { preparing, shipping, completed, cancelled }
