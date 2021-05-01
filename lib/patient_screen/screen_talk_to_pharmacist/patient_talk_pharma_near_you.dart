import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmaPage extends StatefulWidget {
  static const String id = 'patient_pharma_page';
  @override
  _PharmaPage createState() => _PharmaPage();
}

class _PharmaPage extends State<PharmaPage> {
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
          appBar: AppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
            leading: Icon(
              CupertinoIcons.back,
              size: 30,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            title: Text(
              'Pharmacy Near You',
              style: TextStyle(color: Color.fromRGBO(46, 130, 139, 1)),
            ),
            actions: [
              Icon(
                CupertinoIcons.bag,
                color: Color.fromRGBO(193, 193, 193, 1),
              )
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: 390,
                  height: 300,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('asset/ms.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0.0, 2),
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                blurRadius: 2)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 390,
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Health Pharmacy',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color.fromRGBO(253, 211, 97, 1),
                                      size: 20,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '4.8',
                                      style: TextStyle(
                                        color: Color.fromRGBO(144, 46, 46, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Icon(
                                            CupertinoIcons.time,
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '29 mins',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  46, 130, 139, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Icon(
                                            CupertinoIcons.location_solid,
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '2.1 km.',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  46, 130, 139, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.local_shipping_outlined,
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '฿20',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  46, 130, 139, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 110),
                                    child: Icon(
                                      CupertinoIcons.info_circle_fill,
                                      color: Color.fromRGBO(144, 46, 46, 1),
                                    ),
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(46, 130, 139, 1),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0.0, 2),
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                blurRadius: 2)
                          ],
                        ),
                        child: Icon(
                          Icons.phone,
                          size: 50,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(46, 130, 139, 1),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0.0, 2),
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                blurRadius: 2)
                          ],
                        ),
                        child: Icon(
                          CupertinoIcons.video_camera_solid,
                          size: 50,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(46, 130, 139, 1),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0.0, 2),
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                blurRadius: 2)
                          ],
                        ),
                        child: Icon(
                          CupertinoIcons.chat_bubble_text_fill,
                          size: 50,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Product',
                        style: TextStyle(
                            color: Color.fromRGBO(193, 193, 193, 1),
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5, right: 20),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),

                      //add card and use wrap
                    ],
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
          //nevbar
        ),
      ),
    );
  }
}
