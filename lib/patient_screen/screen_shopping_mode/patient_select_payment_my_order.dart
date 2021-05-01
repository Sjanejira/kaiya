import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class MyorderSelectPayment extends StatefulWidget {
  static const String id = 'patient_my_order_select_payment';

  @override
  _MyorderSelectPayment createState() => _MyorderSelectPayment();
}

class _MyorderSelectPayment extends State<MyorderSelectPayment> {
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
          top: true,
          bottom: true,
          child: Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(193, 193, 193, 1),
              ),
              title: Text(
                'My Order',
                style: TextStyle(
                  color: Color.fromRGBO(19, 65, 83, 1),
                ),
              ),
            ),
            body: Container(
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Container(
                  margin: EdgeInsets.only(top: 20.h),
                  width: 390,
                  height: 490,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10.h, left: 30.w, bottom: 5.h),
                            child: Text(
                              'Friday 20 Nov. 2020',
                              style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 10.h, right: 30.w, bottom: 5.h),
                            child: Text(
                              '3:59 pm.',
                              style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 30, bottom: 10, right: 30),
                        child: Divider(
                          thickness: 1,
                          color: Color.fromRGBO(226, 226, 226, 1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('asset/3782@2x.png'),
                                fit: BoxFit.fitHeight,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, bottom: 4),
                                child: Text(
                                  'KaiYa',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  '#OrderID : 123456',
                                  style: TextStyle(
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 10, left: 30, bottom: 10, right: 30),
                        child: Divider(
                          thickness: 1,
                          color: Color.fromRGBO(226, 226, 226, 1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('asset/bioc.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text('Blackmores Bio C'),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '฿700',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text(
                                      '฿600',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 155),
                                    child: Text(
                                      'x1',
                                      style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                    'asset/Mega-we-care-Calcium-90-Capsule-157873.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text('MEGA calcium'),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '฿500',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 195),
                                    child: Text(
                                      'x1',
                                      style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 10, left: 30, bottom: 5, right: 30),
                        child: Divider(
                          thickness: 1,
                          color: Color.fromRGBO(226, 226, 226, 1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 40),
                                  child: Icon(
                                    Icons.local_shipping_outlined,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                  )),
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  'Kerry',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 40),
                                child: Text(
                                  '฿40',
                                  style: TextStyle(
                                    color: Color.fromRGBO(144, 46, 46, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 10, left: 30, bottom: 5, right: 30),
                        child: Divider(
                          thickness: 1,
                          color: Color.fromRGBO(226, 226, 226, 1),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('TOTAL : ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text('฿1140',
                              style: TextStyle(
                                color: Color.fromRGBO(144, 46, 46, 1),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RaisedButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(
                              left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                          color: Color.fromRGBO(46, 130, 139, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Text(
                            'PAY',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Color.fromRGBO(250, 250, 250, 1),
            floatingActionButton: PatientNavBarFloatingButtonCall(
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        ));
  }
}
