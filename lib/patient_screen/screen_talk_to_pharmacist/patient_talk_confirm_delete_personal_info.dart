import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDelete extends StatefulWidget {
  static const String id = 'patient_confirm_delete_personal_info';
  @override
  _ConfirmDelete createState() => _ConfirmDelete();
}

class _ConfirmDelete extends State<ConfirmDelete> {
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
              height: 145,
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
                      'Confirm Delete',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Are you sure to',
                            style: TextStyle(
                               fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            'Delete this information ?',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 300,
                    height: 1,
                    color: Color.fromRGBO(193, 193, 193, 1),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 149,
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 18, color: Color.fromRGBO(46, 130, 139, 1)),
                          ),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: 1,
                        color: Color.fromRGBO(193, 193, 193, 1),
                      ),
                      Container(
                        width: 149,
                        child: Center(
                          child: Text(
                            'Delete',
                            style: TextStyle(
                                fontSize: 18, color: Color.fromRGBO(144, 46, 46, 1)),
                          ),
                        ),
                      ),
                    ],
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
