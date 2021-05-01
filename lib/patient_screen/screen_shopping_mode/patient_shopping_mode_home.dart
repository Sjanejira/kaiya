import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/patient_widget/card_product_widget.dart';
import 'package:kaiya/patient_widget/navbar/patient_navBarFloatinButton.dart';

class PatientHome extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _PatientHome createState() => _PatientHome();
}

class _PatientHome extends State<PatientHome> with TickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            elevation: 8.0,
            leading: Icon(
              CupertinoIcons.back,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  CupertinoIcons.search,
                  color: Color.fromRGBO(193, 193, 193, 1),
                ),
              ),
              IconButton(
                icon: const Icon(
                  CupertinoIcons.cart,
                  color: Color.fromRGBO(193, 193, 193, 1),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    top: 15.0,
                                    left: 40.0,
                                    right: 20.0,
                                    bottom: 10.0),
                                color: Colors.white,
                                elevation: 2.0, //shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.medical_services,
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Medicine',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    top: 15.0,
                                    left: 20.0,
                                    right: 20.0,
                                    bottom: 10.0),
                                color: Colors.white,
                                elevation: 2.0, //shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.handyman,
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'External Use',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    top: 15.0,
                                    left: 20.0,
                                    right: 20.0,
                                    bottom: 10.0),
                                color: Colors.white,
                                elevation: 2.0, //shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.clean_hands,
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Health Product',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    top: 15.0,
                                    left: 20.0,
                                    right: 20.0,
                                    bottom: 10.0),
                                color: Colors.white,
                                elevation: 2.0, //shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.power,
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Cosmeceuticals',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    top: 15.0,
                                    left: 20.0,
                                    right: 20.0,
                                    bottom: 10.0),
                                color: Colors.white,
                                elevation: 2.0, //shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.medical_services,
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Skincare',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    top: 15.0,
                                    left: 20.0,
                                    right: 20.0,
                                    bottom: 10.0),
                                color: Colors.white,
                                elevation: 2.0, //shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.sanitizer,
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Supplementary',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    top: 15.0,
                                    left: 20.0,
                                    right: 20.0,
                                    bottom: 10.0),
                                color: Colors.white,
                                elevation: 2.0, //shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.masks,
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Equipment',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 40),
                        child: Text(
                          'NEARBY',
                          style: TextStyle(
                              color: Color.fromRGBO(46, 130, 139, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Icon(
                                CupertinoIcons.right_chevron,
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        CardsaleProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          beforesale: 190,
                          aftersale: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 390,
                  height: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('asset/ms.png'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0.0, 2),
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          blurRadius: 2)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 40),
                        child: Text(
                          'HOT DEAL',
                          style: TextStyle(
                              color: Color.fromRGBO(144, 46, 46, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Icon(
                                CupertinoIcons.right_chevron,
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        CardsaleProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          beforesale: 190,
                          aftersale: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 40),
                        child: Text(
                          'RECOMMEND',
                          style: TextStyle(
                              color: Color.fromRGBO(46, 130, 139, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  color: Color.fromRGBO(193, 193, 193, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Icon(
                                CupertinoIcons.right_chevron,
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        CardsaleProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          beforesale: 190,
                          aftersale: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
        ),
      ),
    );
  }
}
