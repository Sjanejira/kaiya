import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ordermore extends StatefulWidget {
  static const String id = 'in_chat_with_ordermore';
  @override
  _Ordermore createState() => _Ordermore();
}

class _Ordermore extends State<Ordermore> {
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
              width: 310,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 2),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 2)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('asset/bioc.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Blackmores Bio C'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  '฿700',
                                  style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  '฿650',
                                  style: TextStyle(
                                      color: Color.fromRGBO(144, 46, 46, 1)),
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 80),
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image:
                                              AssetImage('asset/Group 495.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 3),
                                      child: Text('1'),
                                    ),
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image:
                                              AssetImage('asset/Group 494.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                            border: Border.all(
                              color: Color.fromRGBO(46, 130, 139, 1),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ORDER MORE',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(46, 130, 139, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(46, 130, 139, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ADD',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
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
