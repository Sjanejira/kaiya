import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyVideoCall extends StatefulWidget {
  static const String id = 'patient_emergency_video_call';
  @override
  _EmergencyVideoCall createState() => _EmergencyVideoCall();
}

class _EmergencyVideoCall extends State<EmergencyVideoCall> {
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
              height: 130,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Video Calling',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'To',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            'KaiYa Pharmacy',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Color.fromRGBO(144, 46, 46, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(46, 130, 139, 1)),
                    ),
                  ),
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
