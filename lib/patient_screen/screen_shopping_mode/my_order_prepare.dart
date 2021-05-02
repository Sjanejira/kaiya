import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';
import 'package:kaiya/patient_widget/order_status_widget.dart';

class MyOrderPrepare extends StatefulWidget {
  static const String id = 'my_order_prepare';

  @override
  _MyOrderPrepare createState() => _MyOrderPrepare();
}

class _MyOrderPrepare extends State<MyOrderPrepare>
    with TickerProviderStateMixin {
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
      builder: () => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(CupertinoIcons.back,
              color: Color.fromRGBO(193, 193, 193, 1),),
            brightness: Brightness.light,
            title: const Text(
              'My Orders',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0),
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            centerTitle: true,
            elevation: 8.0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 50,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30,right: 10),
                          width: 90,
                          height: 30,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text('Pay',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),),
                              ),
                              Container(
                                width: 80,
                                height: 1,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          width: 90,
                          height: 30,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text('Prepare',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),),
                              ),
                              Container(
                                width: 80,
                                height: 1,
                                color: Color.fromRGBO(46, 130, 139, 1),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          width: 90,
                          height: 30,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text('Shipping',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),),
                              ),
                              Container(
                                width: 80,
                                height: 1,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          width: 90,
                          height: 30,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text('Success',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),),
                              ),
                              Container(
                                width: 80,
                                height: 1,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        OrderStatusWidget(
                          typeoforder: 1,
                        ),
                        OrderStatusWidget(
                          typeoforder: 1,
                        ),
                        OrderStatusWidget(
                          typeoforder: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: PatientNavBarFloatingButtonCall(),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
            ),
            notchMargin: 5,
            color: Colors.white,
            elevation: 10.0,
            child: Container(
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.home,
                              color: Color.fromRGBO(46, 130, 139, 1),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.square_list,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.bell,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.person,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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
