import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AskSureToSent extends StatefulWidget {
  static const String id = 'ask_patient_sure_to_sent_personal_info';
  @override
  _AskSureToSent createState() => _AskSureToSent();
}

class _AskSureToSent extends State<AskSureToSent> {
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
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Send to Pharmacy',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 1,
                          color: Color.fromRGBO(193, 193, 193, 1),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 149,
                          height: 45,
                          child: Center(
                            child: Text('Cancel',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 122, 255, 1),
                              fontSize: 18,
                            ),),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 45,
                          color: Color.fromRGBO(193, 193, 193, 1),
                        ),
                        Container(
                          width: 149,
                          height: 45,
                          child: Center(
                            child: Text('Send',
                              style: TextStyle(
                                color: Color.fromRGBO(144, 46, 46, 1),
                                fontSize: 18,
                              ),),
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(230, 230, 230, 1),
        ),
      ),
    );
  }
}
