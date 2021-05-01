import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyPharmaInfo extends StatefulWidget {
  static const String id = 'patient_emergency_pharma_info';
  @override
  _EmergencyPharmaInfo createState() => _EmergencyPharmaInfo();
}

class _EmergencyPharmaInfo extends State<EmergencyPharmaInfo> {
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
              height: 265,
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
                                'KaiYa Pharmacy',
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
                                '4.9',
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
                                  '20 mins',
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
                                  '1.0 km.',
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
                                  '฿10',
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
                            child: Text('12/34 Pracha Uthit rd. Bangmod')),
                        Text('Thungkhru Bangkok 10140'),
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
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Everyday :  9.00 am - 9.00 pm',
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
