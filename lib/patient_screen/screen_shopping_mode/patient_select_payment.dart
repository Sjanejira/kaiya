import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectPayment extends StatefulWidget {
  static const String id = 'patient_select_payment';

  @override
  _SelectPayment createState() => _SelectPayment();
}

class _SelectPayment extends State<SelectPayment> {
  @override
  Widget build(BuildContext context) {
    var colors;
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
                    height: 420.h,
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
                                  'PAYMENT',
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
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 100.0),
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
                                          Text(
                                            'K-Bank',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            '123-4-56789-0',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 100.0),
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
                                          Text(
                                            'K-Bank',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            '123-4-56789-0',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 100.0),
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
                                          Text(
                                            'K-Bank',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            '123-4-56789-0',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(bottom: 20.0, right: 100.0),
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
                                          Text(
                                            'K-Bank',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            '123-4-56789-0',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                    Text(
                                      'Upload Slip Image',
                                      style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 30),
                          child: RaisedButton(
                            onPressed: () {},
                            padding: EdgeInsets.only(
                                left: 40.0,
                                right: 40.0,
                                top: 10.0,
                                bottom: 10.0),
                            color: Color.fromRGBO(46, 130, 139, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
