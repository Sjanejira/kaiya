import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectShipping extends StatefulWidget {
  static const String id = 'patient_select_shipping';

  @override
  _SelectShipping createState() => _SelectShipping();
}

class _SelectShipping extends State<SelectShipping> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));

    var colors;
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              child: Card(
                color: Colors.white,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                    width: 335.w,
                    height: 360.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(left: 120.0, right: 10.0),
                                child: Text(
                                  'SHIPPING',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 100.0),
                                child: Icon(
                                  Icons.close,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Expanded(
                              child: Container(
                            margin: EdgeInsets.only(
                                top: 20.0,
                                left: 20.0,
                                right: 20.0,
                                bottom: 100.0),
                            child: Divider(
                              color: Color.fromRGBO(193, 193, 193, 1),
                              height: 10.0,
                            ),
                          )),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 30.0),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 50),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 20.0),
                                      child: Icon(
                                        Icons.check_circle_outline,
                                        size: 20.0,
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: Image(
                                        //bank pic
                                        image: AssetImage('asset/ms.png'),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Express delivery',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 20.0),
                                              ),
                                              Text(
                                                '฿35',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      144, 46, 46, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5.0),
                                          ),
                                          Text(
                                            'Receive on this day ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 20.0),
                                      child: Icon(
                                        Icons.check_circle_outline,
                                        size: 20.0,
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: Image(
                                        //bank pic
                                        image: AssetImage('asset/ms.png'),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Register - Thailand Post ',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 20.0),
                                              ),
                                              Text(
                                                '฿30',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      144, 46, 46, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5.0),
                                          ),
                                          Text(
                                            'Receive in 3-7 days',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 27),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 20.0),
                                      child: Icon(
                                        Icons.check_circle_outline,
                                        size: 20.0,
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: Image(
                                        //bank pic
                                        image: AssetImage('asset/ms.png'),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'EMS - Thailand Post ',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 20.0),
                                              ),
                                              Text(
                                                '฿50',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      144, 46, 46, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5.0),
                                          ),
                                          Text(
                                            'Receive in 1-3 days  ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 90),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 20.0),
                                      child: Icon(
                                        Icons.check_circle,
                                        size: 20.0,
                                        color: Color.fromRGBO(46, 130, 139, 1),
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: Image(
                                        //bank pic
                                        image: AssetImage('asset/ms.png'),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Kerry ',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 20.0),
                                              ),
                                              Text(
                                                '฿40',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      144, 46, 46, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5.0),
                                          ),
                                          Text(
                                            'Receive in 1-3 days  ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 20),
                                child: RaisedButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.only(
                                      left: 40.0,
                                      right: 40.0,
                                      top: 10.0,
                                      bottom: 10.0),
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  child: Text(
                                    'CONFIRM',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
