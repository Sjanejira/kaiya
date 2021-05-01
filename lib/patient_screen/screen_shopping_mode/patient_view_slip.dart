import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewSlip extends StatefulWidget {
  static const String id = 'patient_view_slip';

  @override
  _ViewSlip createState() => _ViewSlip();
}

class _ViewSlip extends State<ViewSlip> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));

    var colors;
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              child: Card(
                color: Colors.white,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                    width: 335.w,
                    height: 380.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(left: 120.0, right: 10.0),
                                child: Text(
                                  'SLIP PAYMENT',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 70.0, right: 20.0),
                                child: Icon(
                                  Icons.close,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Expanded(
                              child: Container(
                            margin: EdgeInsets.only(
                                top: 20.0,
                                left: 20.0,
                                right: 20.0,
                                bottom: 100.0),
                            child: Divider(
                              color: Color.fromRGBO(193, 193, 193, 1),
                              height: 10.0,
                            ),
                          )),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image(
                                        //bank pic
                                        image: AssetImage(
                                            'asset/Slip for project.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
