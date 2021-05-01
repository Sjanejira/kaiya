import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatefulWidget {
  static const String id = 'patient_signup';

  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {
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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 340,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Icon(Icons.arrow_back_ios_outlined,
                              color: Color.fromRGBO(193, 193, 193, 1),)
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 90),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 20),
                                  child: Icon(
                                    Icons.alternate_email_outlined,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Username',
                                    style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 280,
                              height: 1,
                              color: Color.fromRGBO(193, 193, 193, 0.5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 20),
                                  child: Icon(
                                    Icons.person_outline,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 280,
                              height: 1,
                              color: Color.fromRGBO(193, 193, 193, 0.5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 20),
                                  child: Icon(
                                    Icons.phone_outlined,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Phone',
                                    style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 280,
                              height: 1,
                              color: Color.fromRGBO(193, 193, 193, 0.5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 20),
                                  child: Icon(
                                    Icons.email_outlined,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Email / Phone',
                                    style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 280,
                              height: 1,
                              color: Color.fromRGBO(193, 193, 193, 0.5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 20),
                                  child: Icon(
                                    Icons.vpn_key_outlined,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                      color: Color.fromRGBO(193, 193, 193, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 280,
                              height: 1,
                              color: Color.fromRGBO(193, 193, 193, 0.5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: RaisedButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(
                              left: 125.0,
                              right: 125.0,
                              top: 10.0,
                              bottom: 10.0),
                          color: Color.fromRGBO(46, 130, 139, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(180, 180, 180, 1),
        ),
      ),
    );
  }
}
