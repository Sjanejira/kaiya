import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/order_status_widget.dart';

class PharmaOrder extends StatefulWidget {
  static const String id = 'pharma_order';

  @override
  _PharmaOrder createState() => _PharmaOrder();
}

class _PharmaOrder extends State<PharmaOrder> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'New Order',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  OrderStatusWidget(
                    typeoforder: 0,
                  ),
                  OrderStatusWidget(
                    typeoforder: 0,
                  ),
                  OrderStatusWidget(
                    typeoforder: 0,
                  ),
                  OrderStatusWidget(
                    typeoforder: 0,
                  ),
                  OrderStatusWidget(
                    typeoforder: 0,
                  ),
                  OrderStatusWidget(
                    typeoforder: 0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
