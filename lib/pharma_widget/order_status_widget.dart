import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_detail.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';
import 'package:kaiya/pharma_widget/item_box_widget.dart';
import 'package:kaiya/pharma_widget/order_status_box_widget.dart';

class OrderStatusWidget extends StatelessWidget {
  OrderStatusWidget({this.typeoforder, this.data, this.widget});
  final Order data;
  final int typeoforder;
  final PharmaOrder widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
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
                    backgroundImage: NetworkImage(data.patient_imageUrl),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.patient_name,
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Text(
                          "#OrderID : ${data.orderId}",
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
              ItemBox(
                item: data.items[0],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h, bottom: 1.h),
                child: Divider(
                  thickness: 1,
                ),
              ),
              GestureDetector(
                onTap: () => widget.onPush(context, data, typeoforder),
                child: Text(
                  "See More Items",
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: Color.fromRGBO(193, 193, 193, 1),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h, bottom: 10.h),
                child: Divider(
                  thickness: 1,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Text(
                      "Total : ",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "฿ ${data.total_price} ",
                      style: TextStyle(
                          color: Color.fromRGBO(144, 46, 46, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              if (typeoforder == OrderStatus.preparing.index)
                RaisedButton(
                  onPressed: () {
                    print(typeoforder);
                    widget.onPush(context, data, typeoforder);
                  },
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  color: Color.fromRGBO(46, 130, 139, 1.0),
                  textColor: Colors.white,
                  child: Text("UPDATE"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

enum OrderStatus { preparing, shipping, completed, cancelled }
