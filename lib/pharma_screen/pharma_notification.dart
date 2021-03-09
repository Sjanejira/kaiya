import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmaNotification extends StatefulWidget {
  static const String id = 'pharma_notification';

  @override
  _PharmaNotification createState() => _PharmaNotification();
}

class _PharmaNotification extends State<PharmaNotification>
    with TickerProviderStateMixin {
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
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'Notification',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Container(
            margin: EdgeInsets.only(top: 10.h),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          3.0, // Move to right 10  horizontally
                          8.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 20.r,
                          child: Image.asset('ms.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5.h),
                            child: Text("Music (Queue#1)"),
                          ),
                          Container(
                            child: Text("Waiting update order"),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Text("22 Nov."),
                          ),
                          Container(
                            child: Text("9:09 am."),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
