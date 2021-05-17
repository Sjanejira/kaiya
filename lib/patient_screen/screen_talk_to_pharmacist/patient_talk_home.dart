import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientTalkHome extends StatefulWidget {
  static const String id = 'patient_home';
  @override
  _PatientTalkHome createState() => _PatientTalkHome();
}

class _PatientTalkHome extends State<PatientTalkHome> {
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
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 390,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 2)
                        ],
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Delivering to',
                                      style: TextStyle(
                                          color: Color.fromRGBO(19, 65, 83, 1)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Icon(
                                            Icons.location_on,
                                            color: Color.fromRGBO(144, 46, 46, 1),
                                            size: 15,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Carla Houston',
                                          ),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      size: 30,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Icon(
                                      Icons.receipt_outlined,
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(144, 46, 46, 1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              blurRadius: 2)
                        ],
                      ),
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Center(
                        child: Text(
                          'EMERGENCY',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(252, 252, 241, 1)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 5),
                      width: 330,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 280,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 239, 239, 1),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.0, 2),
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    blurRadius: 2)
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.search_outlined,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.map,
                              color: Color.fromRGBO(46, 130, 139, 1),
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Phaemacy Near You',
                              style: TextStyle(
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'See All',
                                    style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1)),
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('KaiYa PHARMACY'),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.location_on,
                                          color: Color.fromRGBO(144, 46, 46, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          'Bangmod',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.access_time_outlined,
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '9.00 am - 9.00 pm',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.local_shipping_outlined,
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '฿10',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
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
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('KaiYa PHARMACY'),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.location_on,
                                          color: Color.fromRGBO(144, 46, 46, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          'Bangmod',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.access_time_outlined,
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '9.00 am - 9.00 pm',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.local_shipping_outlined,
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '฿10',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
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
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('KaiYa PHARMACY'),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.location_on,
                                          color: Color.fromRGBO(144, 46, 46, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          'Bangmod',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.access_time_outlined,
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '9.00 am - 9.00 pm',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.local_shipping_outlined,
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '฿10',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
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
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('KaiYa PHARMACY'),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.location_on,
                                          color: Color.fromRGBO(144, 46, 46, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          'Bangmod',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.access_time_outlined,
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '9.00 am - 9.00 pm',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.local_shipping_outlined,
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '฿10',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
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
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('KaiYa PHARMACY'),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.location_on,
                                          color: Color.fromRGBO(144, 46, 46, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          'Bangmod',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.access_time_outlined,
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '9.00 am - 9.00 pm',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.local_shipping_outlined,
                                          color: Color.fromRGBO(19, 65, 83, 1),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '฿10',
                                          style: TextStyle(
                                            color: Color.fromRGBO(193, 193, 193, 1),
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
