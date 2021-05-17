import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientNoOnQueue extends StatefulWidget {
  static const String id = 'patient_no_queue';
  @override
  _PatientNoOnQueue createState() => _PatientNoOnQueue();
}

class _PatientNoOnQueue extends State<PatientNoOnQueue> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Queue',
                        style: TextStyle(
                          color: Color.fromRGBO(46, 130, 139, 1),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,left: 20,right: 20),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        'No queue',
                        style: TextStyle(
                          color: Color.fromRGBO(193, 193, 193, 1),
                        ),
                      ),
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
