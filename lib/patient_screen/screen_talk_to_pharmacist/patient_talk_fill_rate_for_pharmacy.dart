import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillRateForPharma extends StatefulWidget {
  static const String id = 'patient_empty_fill_rate';
  @override
  _FillRateForPharma createState() => _FillRateForPharma();
}

class _FillRateForPharma extends State<FillRateForPharma> {
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
          body: Center(
            child: Container(
              width: 340,
              height: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 320,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Rate For Pharmacy',
                            style: TextStyle(
                              color: Color.fromRGBO(19, 65, 83, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 1,
                    color: Color.fromRGBO(193, 193, 193, 1),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Icon(
                            CupertinoIcons.star,
                            color: Color.fromRGBO(242, 206, 0, 1),
                            size: 50,
                          ),
                        ),
                        Container(
                          child: Icon(
                            CupertinoIcons.star,
                            color: Color.fromRGBO(242, 206, 0, 1),
                            size: 50,
                          ),
                        ),
                        Container(
                          child: Icon(
                            CupertinoIcons.star,
                            color: Color.fromRGBO(242, 206, 0, 1),
                            size: 50,
                          ),
                        ),
                        Container(
                          child: Icon(
                            CupertinoIcons.star,
                            color: Color.fromRGBO(242, 206, 0, 1),
                            size: 50,
                          ),
                        ),
                        Container(
                          child: Icon(
                            CupertinoIcons.star,
                            color: Color.fromRGBO(242, 206, 0, 1),
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 240,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(193, 193, 193, 1),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 5, left: 5),
                      child: Text(
                        'suggest/complaint',
                        style: TextStyle(
                          color: Color.fromRGBO(193, 193, 193, 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Pharmacy Name: ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 65, 83, 1)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  'KaiYa',
                                  style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Date: ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 65, 83, 1)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  'April 30, 2021',
                                  style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Time: ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 65, 83, 1)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  '10:45 am.',
                                  style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Patient: ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(19, 65, 83, 1)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Ravichms',
                                  style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 200,
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 2)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('Order'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          width: 180,
                          height: 1,
                          color: Color.fromRGBO(193, 193, 193, 0.5),
                        ),
                        Container(
                          width: 170,
                          height: 100,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Sara 500 mg.',
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      '฿129',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'x1',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(193, 193, 193, 1)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                width: 180,
                                height: 1,
                                color: Color.fromRGBO(193, 193, 193, 0.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(Icons.pedal_bike_outlined),
                                  ),
                                  Container(
                                    child: Text(
                                      '฿20',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                width: 180,
                                height: 1,
                                color: Color.fromRGBO(193, 193, 193, 0.5),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Total: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '฿149',
                                  style: TextStyle(
                                      color: Color.fromRGBO(144, 46, 46, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(19, 65, 83, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Contact Pharmacy',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(46, 130, 139, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Contact Support',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(193, 193, 193, 1.0),
        ),
      ),
    );
  }
}
