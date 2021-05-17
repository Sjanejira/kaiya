import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AfterSentCard extends StatefulWidget {
  static const String id = 'in_chat_buy_for_other';
  @override
  _AfterSentCard createState() => _AfterSentCard();
}

class _AfterSentCard extends State<AfterSentCard> {
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
            leading: Icon(
              CupertinoIcons.back,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            title: const Text(
              'Lab Pharmacy',
              style: TextStyle(
                  color: Color.fromRGBO(19, 65, 83, 1.0),
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, right: 100),
                  width: 200,
                  height: 80,
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
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Text(
                      'Please sent personal information your mother to me',
                      style: TextStyle(
                          color: Color.fromRGBO(46, 130, 139, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 210, top: 20),
                  width: 150,
                  height: 200,
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
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                'asset/pon.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Ponchon',
                            style: TextStyle(
                              color: Color.fromRGBO(16, 65, 83, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '22 years',
                            style: TextStyle(
                              color: Color.fromRGBO(16, 65, 83, 1),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Female',
                            style: TextStyle(
                              color: Color.fromRGBO(46, 130, 139, 1),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'W:',
                                      style: TextStyle(
                                        color: Color.fromRGBO(19, 65, 83, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      ' 50',
                                      style: TextStyle(
                                        color: Color.fromRGBO(46, 130, 139, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'H:',
                                      style: TextStyle(
                                        color: Color.fromRGBO(19, 65, 83, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      ' 170',
                                      style: TextStyle(
                                        color: Color.fromRGBO(46, 130, 139, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            'Allergy (nut)',
                            style: TextStyle(
                              color: Color.fromRGBO(46, 130, 139, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
