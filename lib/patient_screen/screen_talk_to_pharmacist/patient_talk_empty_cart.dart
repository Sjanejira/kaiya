import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyCart extends StatefulWidget {
  static const String id = 'patient_empty_cart';
  @override
  _EmptyCart createState() => _EmptyCart();
}

class _EmptyCart extends State<EmptyCart> {
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
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  'No order in bag',
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(210, 210, 210, 1),
        ),
      ),
    );
  }
}
