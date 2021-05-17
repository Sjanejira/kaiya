import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class SeeAllPharma extends StatefulWidget {
  static const String id = 'patient_all_pharma_near_by';
  @override
  _SeeAllPharma createState() => _SeeAllPharma();
}

class _SeeAllPharma extends State<SeeAllPharma> {
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
              left: true,
              right: true,
              child: Scaffold(
                appBar: AppBar(
                  leading: Icon(
                    CupertinoIcons.back,
                    color: Color.fromRGBO(193, 193, 193, 1),
                    size: 30,
                  ),
                  title: Text(
                    'Pharmacy Near You',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(19, 65, 83, 1)),
                  ),
                ),
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text('KaiYa PHARMACY'),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    144, 46, 46, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                'Bangmod',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '9.00 am - 9.00 pm',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '฿10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text('KaiYa PHARMACY'),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    144, 46, 46, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                'Bangmod',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '9.00 am - 9.00 pm',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '฿10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text('KaiYa PHARMACY'),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    144, 46, 46, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                'Bangmod',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '9.00 am - 9.00 pm',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '฿10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text('KaiYa PHARMACY'),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    144, 46, 46, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                'Bangmod',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '9.00 am - 9.00 pm',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '฿10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text('KaiYa PHARMACY'),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    144, 46, 46, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                'Bangmod',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '9.00 am - 9.00 pm',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '฿10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text('KaiYa PHARMACY'),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    144, 46, 46, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                'Bangmod',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '9.00 am - 9.00 pm',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '฿10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text('KaiYa PHARMACY'),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    144, 46, 46, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                'Bangmod',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '9.00 am - 9.00 pm',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 2),
                                              child: Text(
                                                '฿10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      193, 193, 193, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 330, left: 20),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          child: const Icon(
                            CupertinoIcons.phone_fill,
                            size: 33.0,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                          autofocus: true,
                        ),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                floatingActionButton: PatientNavBarFloatingButtonShop(),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar: BottomAppBar(
                  shape: AutomaticNotchedShape(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                  ),
                  notchMargin: 5,
                  color: Colors.white,
                  elevation: 10.0,
                  child: Container(
                    height: 50.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              minWidth: 40.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      CupertinoIcons.home,
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      size: 33.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(
                              minWidth: 40.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      CupertinoIcons.chat_bubble_text,
                                      color: Color.fromRGBO(226, 226, 226, 1.0),
                                      size: 33.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              minWidth: 40.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      CupertinoIcons.bell,
                                      color: Color.fromRGBO(226, 226, 226, 1.0),
                                      size: 33.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(
                              minWidth: 40.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      CupertinoIcons.person,
                                      color: Color.fromRGBO(226, 226, 226, 1.0),
                                      size: 33.0,
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
                ),
              ),
            ));
  }
}
