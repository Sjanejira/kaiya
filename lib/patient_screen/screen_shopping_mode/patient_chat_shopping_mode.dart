import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class ChatShopping extends StatefulWidget {
  static const String id = 'patient_chat_shopping';

  @override
  _ChatShopping createState() => _ChatShopping();
}

class _ChatShopping extends State<ChatShopping> with TickerProviderStateMixin {
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
            title: const Text(
              'Chat',
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
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "10:59 pm.",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 460,
                      height: 61,
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 38),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kaiya",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 180),
                                            child: Text(
                                              "1 Apr 2021",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "We’re preparing this order.",
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Color.fromRGBO(
                                                    193, 193, 193, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 100),
                                            child: Positioned(
                                              right: 15.w,
                                              child: Container(
                                                padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        144, 46, 46, 1),
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  width: 70,
                                  height: 60,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delete',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            width: 460,
                            height: 1,
                            color: Colors.grey[350],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: PatientNavBarFloatingButtonCall(),
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
