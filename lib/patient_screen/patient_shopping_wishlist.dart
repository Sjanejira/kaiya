import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Wishlist extends StatefulWidget {
  static const String id = 'patient_wishlist';

  @override
  _Wishlist createState() => _Wishlist();
}

class _Wishlist extends State<Wishlist> {
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
          child: Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(193, 193, 193, 1),
              ),
              title: Text(
                'Wishlist',
                style: TextStyle(
                  color: Color.fromRGBO(19, 65, 83, 1),
                ),
              ),
            ),
            body: Container(
              //create new in widget call class wishlistcard
            ),
            //same bottom app bar
          ),
        ));
  }
}
