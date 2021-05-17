import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientPharmaHasQueue extends StatefulWidget {
  static const String id = 'patient_pop_up_pharma_has_queue';
  @override
  _PatientPharmaHasQueue createState() => _PatientPharmaHasQueue();
}

class _PatientPharmaHasQueue extends State<PatientPharmaHasQueue> {
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
                width: 300,
                height: 160,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'KaiYa Pharmacy',
                        style: TextStyle(
                          color: Color.fromRGBO(19, 65, 83, 1),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text(
                        'have 1 queue on phone',
                        style: TextStyle(
                          color: Color.fromRGBO(46, 130, 139, 1),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Divider(
                            color: Color.fromRGBO(193, 193, 193, 1),
                            thickness: 1,
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                width: 149,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 50,
                                color: Color.fromRGBO(193, 193, 193, 1),
                              ),
                              Container(
                                width: 149,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    'Wait',
                                    style: TextStyle(
                                        color: Color.fromRGBO(19, 65, 83, 1),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          backgroundColor: Color.fromRGBO(210, 210, 210, 1),
        ),
      ),
    );
  }
}
