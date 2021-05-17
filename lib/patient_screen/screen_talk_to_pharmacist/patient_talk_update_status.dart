import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateStatus extends StatefulWidget {
  static const String id = 'patient_update_order_status';
  @override
  _UpdateStatus createState() => _UpdateStatus();
}

class _UpdateStatus extends State<UpdateStatus> {
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
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5),),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 130),
                          child: Text('UPDATE',
                          style: TextStyle(
                            color: Color.fromRGBO(19, 65, 83, 1),
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(CupertinoIcons.xmark,
                          color: Color.fromRGBO(193, 193, 193, 1),),
                        )
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
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(19, 65, 83, 1),
                    ),
                    child: Center(
                      child: Icon(Icons.pedal_bike_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 45,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Center(
                      child: Text('Add information of delivery ',
                      style: TextStyle(
                        color: Color.fromRGBO(19, 65, 83, 1),
                      ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                    child: Center(
                      child: Text('Somchai',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                    child: Center(
                      child: Text('Honda Fino',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                    child: Center(
                      child: Text('Red',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),),
                    ),
                  ),
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
