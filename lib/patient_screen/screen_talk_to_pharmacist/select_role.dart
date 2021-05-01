import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectRole extends StatefulWidget {
  static const String id = 'select_role';

  @override
  _SelectRole createState() => _SelectRole();
}

class _SelectRole extends State<SelectRole> {
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
              child: Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'You are..',
                          style: TextStyle(
                            color: Color.fromRGBO(19, 65, 83, 1),
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: RaisedButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(
                              left: 100.0,
                              right: 100.0,
                              top: 10.0,
                              bottom: 10.0),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Text(
                            'Patient',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 30),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: RaisedButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(
                              left: 70.0, right: 70.0, top: 10.0, bottom: 10.0),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Text(
                            'Pharmacist',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Color.fromRGBO(250, 250, 250, 1),
              ),
            ));
  }
}
