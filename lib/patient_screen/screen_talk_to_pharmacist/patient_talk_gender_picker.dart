import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/gender_picker_widget.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class SelectGender extends StatefulWidget {
  static const String id = 'gender_picker';
  @override
  _SelectGender createState() => _SelectGender();
}

class _SelectGender extends State<SelectGender> {
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
          body: Container(
            margin: EdgeInsets.only(top: 720),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: GengerPicker(),
          ),
        ),
      ),
    );
  }
}
