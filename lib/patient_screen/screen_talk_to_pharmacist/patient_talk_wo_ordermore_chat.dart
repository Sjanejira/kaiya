import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatNoMore extends StatefulWidget {
  static const String id = 'in_chat_with_no_more';
  @override
  _ChatNoMore createState() => _ChatNoMore();
}

class _ChatNoMore extends State<ChatNoMore> {
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
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            leading: Icon(
              CupertinoIcons.back,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            title: const Text(
              'KaiYa',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 20),
                    width: 200,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 2)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('Order'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          width: 180,
                          height: 1,
                          color: Color.fromRGBO(193, 193, 193, 0.5),
                        ),
                        Container(
                          width: 170,
                          height: 100,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Sara 500 mg.',
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      '฿129',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'x1',
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(193, 193, 193, 1)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                width: 180,
                                height: 1,
                                color: Color.fromRGBO(193, 193, 193, 0.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(Icons.pedal_bike_outlined),
                                  ),
                                  Container(
                                    child: Text(
                                      '฿20',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                width: 180,
                                height: 1,
                                color: Color.fromRGBO(193, 193, 193, 0.5),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Total: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '฿149',
                                  style: TextStyle(
                                      color: Color.fromRGBO(144, 46, 46, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 70,
                              height: 20,
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
                                      fontSize: 10,
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 20,
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
                                    'PAY',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 160, top: 20),
                    width: 200,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 2)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('Order'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          width: 180,
                          height: 1,
                          color: Color.fromRGBO(193, 193, 193, 0.5),
                        ),
                        Container(
                          width: 170,
                          height: 100,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Sara 500 mg.',
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      '฿129',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'x1',
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(193, 193, 193, 1)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                width: 180,
                                height: 1,
                                color: Color.fromRGBO(193, 193, 193, 0.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(Icons.pedal_bike_outlined),
                                  ),
                                  Container(
                                    child: Text(
                                      '฿20',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                width: 180,
                                height: 1,
                                color: Color.fromRGBO(193, 193, 193, 0.5),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Total: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '฿799',
                                  style: TextStyle(
                                      color: Color.fromRGBO(144, 46, 46, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 70,
                              height: 20,
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
                                    'RATE ORDER',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 20,
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
                                    'RATE DRIVER',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(245, 245, 245, 1.0),
          bottomNavigationBar: Container(
            child: Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, -1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      Icons.add_circle_outline,
                      size: 30,
                      color: Color.fromRGBO(46, 130, 139, 1),
                    ),
                  ),
                  Container(
                    width: 270,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(239, 239, 239, 1),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.send,
                      size: 30,
                      color: Color.fromRGBO(46, 130, 139, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
