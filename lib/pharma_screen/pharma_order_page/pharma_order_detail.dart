import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';
import 'package:kaiya/pharma_widget/order_detail_box_widget.dart';
import 'package:intl/intl.dart';

class PharmaOrderDetail extends StatefulWidget {
  PharmaOrderDetail({this.data, this.typeoforder});
  static const String id = 'pharma_order_detail';
  final Order data;
  final int typeoforder;

  @override
  _PharmaOrderDetail createState() => _PharmaOrderDetail();
}

class _PharmaOrderDetail extends State<PharmaOrderDetail>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final format = DateFormat('HH:mm a');
    final dayformat = DateFormat('EEEE dd MMM. yyyy');
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
            brightness: Brightness.light,
            title: const Text(
              'Order',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.h),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              dayformat.format(
                                DateTime.parse(
                                  widget.data.time_order
                                      .toDate()
                                      .toLocal()
                                      .toString(),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Color(0xffC1C1C1),
                              ),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 8.w),
                          ),
                          Container(
                            child: Text(
                              format.format(
                                DateTime.parse(
                                  widget.data.time_order
                                      .toDate()
                                      .toLocal()
                                      .toString(),
                                ),
                              ),
                              style: TextStyle(
                                color: Color(0xffC1C1C1),
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    OrderDetailWidget(
                      typeoforder: widget.typeoforder,
                      data: widget.data,
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
