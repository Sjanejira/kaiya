import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBuyForOther extends StatefulWidget {
  static const String id = 'in_chat_buy_for_other';
  @override
  _ChatBuyForOther createState() => _ChatBuyForOther();
}

class _ChatBuyForOther extends State<ChatBuyForOther> {
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
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0),
              fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 8.0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,right: 40),
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
                    margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                    child: Text('Please sent personal information your mother to me',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 520,left: 85),
                  child: Text('Click + for send other information',
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1)
                  ),),
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
