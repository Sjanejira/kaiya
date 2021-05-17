import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class OptionSelectOtherInfo extends StatefulWidget {
  static const String id = 'patient_option_select_other_info';
  @override
  _OptionSelectOtherInfo createState() => _OptionSelectOtherInfo();
}

class _OptionSelectOtherInfo extends State<OptionSelectOtherInfo> {
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
              width: 330,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 330,
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 20,left: 40),
                                child: Icon(
                                  CupertinoIcons.camera,
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5,left: 20),
                                child: Text('Camera',
                                style: TextStyle(
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 20,left: 40),
                                child: Icon(
                                  CupertinoIcons.photo,
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5,left: 20),
                                child: Text('Picture',
                                  style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 20,left: 40),
                                child: Icon(
                                  CupertinoIcons.creditcard,
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5,left: 20),
                                child: Text('Personal Information',
                                  style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
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
