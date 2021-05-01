import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class PatientNotification extends StatefulWidget {
  static const String id = 'patient_notification';

  @override
  _PatientNotification createState() => _PatientNotification();
}

class _PatientNotification extends State<PatientNotification>
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
      child: SafeArea(
        top: true,
        bottom: true,
        child: Scaffold(
            appBar: AppBar(
              brightness: Brightness.light,
              title: const Text(
                'Notification',
                style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 8.0,
            ),
            body: Center(
              child: Container(
                color: Color.fromRGBO(250, 250, 250, 1),
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Order ID #923456',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                    Color.fromRGBO(19, 65, 83, 1)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5 ,left: 117),
                                            child: Text(
                                              '23 Nov',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color:
                                                  Color.fromRGBO(193, 193, 193, 1)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Text(
                                                'Preparing',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color:
                                                        Color.fromRGBO(144, 46, 46, 1)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 160),
                                              child: Text(
                                                '3:59 pm.',
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color:
                                                    Color.fromRGBO(193, 193, 193, 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.theconversation.com/files/256057/original/file-20190129-108364-17hlc1x.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Order ID #123456',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                Color.fromRGBO(19, 65, 83, 1)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5 ,left: 117),
                                            child: Text(
                                              '22 Nov',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color:
                                                  Color.fromRGBO(193, 193, 193, 1)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Text(
                                                'Shipping',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color:
                                                    Color.fromRGBO(144, 46, 46, 1)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 160),
                                              child: Text(
                                                '10:59 pm.',
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color:
                                                    Color.fromRGBO(193, 193, 193, 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.theconversation.com/files/369567/original/file-20201116-23-18wlnv.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Order ID #72049',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                Color.fromRGBO(19, 65, 83, 1)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5 ,left: 117),
                                            child: Text(
                                              '20 Nov',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color:
                                                  Color.fromRGBO(193, 193, 193, 1)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Text(
                                                'Shipping',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color:
                                                    Color.fromRGBO(144, 46, 46, 1)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 160),
                                              child: Text(
                                                '1:59 pm.',
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color:
                                                    Color.fromRGBO(193, 193, 193, 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          floatingActionButton: PatientNavBarFloatingButtonCall(
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
              height: 60.h,
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
                            Icon(
                              CupertinoIcons.home,
                              color: Color.fromRGBO(46, 130, 139, 1),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.square_list,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
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
                            Icon(
                              CupertinoIcons.bell,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.person,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
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
            //nev bar
            ),
      ),
    );
  }
}
