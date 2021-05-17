import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class ViewPersonalInfo extends StatefulWidget {
  static const String id = 'in_chat_view_personal_info';
  @override
  _ViewPersonalInfo createState() => _ViewPersonalInfo();
}

class _ViewPersonalInfo extends State<ViewPersonalInfo> {
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
              'Personal Information',
              style: TextStyle(
                  color: Color.fromRGBO(19, 65, 83, 1.0),
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
            actions: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(CupertinoIcons.checkmark,
                  color: Color.fromRGBO(19, 65, 83, 1),),
              )
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 340,
                height: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('asset/pon.png'),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 320,
                      height: 40,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Name: ',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),
                                Container(
                                  child: Text('Ponchon',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 40,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Birthday: ',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                                Container(
                                  child: Text('February 27, 1999',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Icon(CupertinoIcons.forward,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 15,),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 40,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Ages: ',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                                Container(
                                  child: Text('22',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 40,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Gender: ',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                                Container(
                                  child: Text('Female',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 40,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text('Weight ',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      child: Text('(kg.)',
                                        style: TextStyle(
                                          color: Color.fromRGBO(193, 193, 193, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: Text(':',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      child: Text('50',
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text('Height ',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      child: Text('(cm.)',
                                        style: TextStyle(
                                          color: Color.fromRGBO(193, 193, 193, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: Text(':',
                                        style: TextStyle(
                                          color: Color.fromRGBO(46, 130, 139, 1),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                    Container(
                                      child: Text('170',
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 70,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Congenital disease : ',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: 90,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(226, 226, 226, 1),
                                    borderRadius: BorderRadius.all(Radius.circular(10),),
                                  ),
                                  child: Center(
                                    child: Text('Allergy (nut)',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  width: 30,
                                  height: 30,
                                  child: Center(
                                    child: Icon(CupertinoIcons.minus_circle_fill,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                      size: 30,),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  width: 30,
                                  height: 30,
                                  child: Center(
                                    child: Icon(CupertinoIcons.plus_circle_fill,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                      size: 30,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 280,
                              height: 1,
                              color: Color.fromRGBO(193, 193, 193, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 70,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Allergic drugs & Reactions: : ',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: 30,
                                  height: 30,
                                  child: Center(
                                    child: Icon(CupertinoIcons.plus_circle_fill,
                                      color: Color.fromRGBO(19, 65, 83, 1),
                                      size: 30,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 280,
                              height: 1,
                              color: Color.fromRGBO(193, 193, 193, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 40,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Relationship: ',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                                Container(
                                  child: Text('Mother',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 280,
                            height: 1,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 320,
                      height: 40,
                      //color: Colors.pink[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  child: Text('Phone:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(46, 130, 139, 1),
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                                Container(
                                  child: Text('098-765-4321',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Icon(CupertinoIcons.check_mark_circled_solid,
                                    color: Color.fromRGBO(46, 130, 139, 1),
                                    size: 25,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Default',
                                    style: TextStyle(
                                        color: Color.fromRGBO(46, 130, 139, 1),
                                        fontSize: 17
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  child: Icon(CupertinoIcons.delete,
                                    color: Color.fromRGBO(193, 193, 193, 1),
                                    size: 25,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,right: 30),
                                  child: Text('Delete',
                                    style: TextStyle(
                                        color: Color.fromRGBO(193, 193, 193, 1),
                                        fontSize: 17
                                    ),),
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
            ),
          ),
          backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
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
      ),
    );
  }
}
