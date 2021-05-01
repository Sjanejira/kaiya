import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnQueue extends StatefulWidget {
  static const String id = 'patient_on_queue';
  @override
  _OnQueue createState() => _OnQueue();
}

class _OnQueue extends State<OnQueue> {
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
          body: Center(
            child: Container(
              width: 300,
              height: 380,
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
                      'On the phone',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      image: const DecorationImage(
                        image: AssetImage('asset/ms.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            blurRadius: 2)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Queue #1',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      '0:02',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(144, 46, 46, 1),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            blurRadius: 2)
                      ],
                    ),
                    child: Icon(Icons.phone,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 30,),
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
