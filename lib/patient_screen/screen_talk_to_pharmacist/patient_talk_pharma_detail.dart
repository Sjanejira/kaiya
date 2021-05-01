import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmaInfo extends StatefulWidget {
  static const String id = 'patient_pharma_info';
  @override
  _PharmaInfo createState() => _PharmaInfo();
}

class _PharmaInfo extends State<PharmaInfo> {
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
        top: true,
        bottom: true,
        child: Scaffold(
          body: Center(
            child: Container(
              width: 320,
              height: 285,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 2),
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      blurRadius: 2)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                'Health Pharmacy',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.star_rounded,
                                color: Color.fromRGBO(253, 211, 97, 1),
                                size: 20,
                              ),
                            ),
                            Container(
                              child: Text(
                                '4.8',
                                style: TextStyle(
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(
                                  CupertinoIcons.time,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '29 mins',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(
                                  CupertinoIcons.location_solid,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '2.1 km.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.local_shipping_outlined,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '฿20',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(193, 193, 193, 1),
                              fontSize: 15),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            '45/67 Pra-U-Tid road. Thungkhru  Bangkok',
                          ),
                        ),
                        Text('10140'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Open hours',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(193, 193, 193, 1),
                              fontSize: 15),
                        ),
                        Container(
                          child: Text(
                            'Sun  :  9.30 am - 9.30 pm',
                          ),
                        ),
                        Container(
                          child: Text(
                            'Mon - Fri  :  9.00 am - 9.00 pm',
                          ),
                        ),
                        Container(
                          child: Text(
                            'Sat  :  10.00 am - 9.00 pm',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(210, 210, 210, 1),
          //nevbar
        ),
      ),
    );
  }
}
