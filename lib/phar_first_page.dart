import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/AddButton.dart';
import 'package:kaiya/pharma_widget/navbar/PharmaNavBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/PharmaNavBar.dart';

class PharWelcome extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _PharWelcome createState() => _PharWelcome();
}

class _PharWelcome extends State<PharWelcome> with TickerProviderStateMixin {
  TabController _tabController;

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
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'Home',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  margin: EdgeInsets.only(top: 10.h),
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          height: 50.0.h,
                          margin: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.ac_unit_sharp,
                            size: 50.sp,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 30.0.h,
                              child: Text(
                                "Musicza55+",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromRGBO(19, 65, 83, 1.0),
                                ),
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Icon(
                                    Icons.where_to_vote_rounded,
                                    color: Color.fromRGBO(46, 130, 139, 1.0),
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 10.0, 5.0, 0),
                                ),
                                Container(
                                  child: Text(
                                    "บ้านกูเอง",
                                    style: TextStyle(
                                      fontSize: 15.0.sp,
                                      color: Color.fromRGBO(46, 130, 139, 1.0),
                                    ),
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 10.0, 5.0, 0),
                                  alignment: Alignment.topLeft,
                                  height: 30.0.h,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          child: OutlineButton(
                            onPressed: () {},
                            textColor: Color.fromRGBO(46, 130, 139, 1.0),
                            child: Text("Edit Profile"),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(46, 130, 139, 1.0),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                        child: TabBar(
                          controller: _tabController,
                          indicatorColor: Color.fromRGBO(46, 130, 139, 1.0),
                          labelColor: Color.fromRGBO(46, 130, 139, 1.0),
                          unselectedLabelColor: Colors.grey,
                          tabs: <Tab>[
                            Tab(text: "Shop"),
                            Tab(text: "Product"),
                            Tab(text: "Category"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      AddProductButton(
                        height: 100.h,
                        minwidth: 100.w,
                        paddingtop: 120.h,
                        margintop: 10.h,
                        label: "Add Product",
                      ),
                      AddProductButton(
                        height: 100.h,
                        minwidth: 100.w,
                        paddingtop: 120.h,
                        margintop: 10.h,
                        label: "Add Product",
                      ),
                      AddProductButton(
                        height: 100.h,
                        minwidth: 100.w,
                        paddingtop: 120.h,
                        margintop: 10.h,
                        label: "Add Product",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: PharmaNavBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: PharmaNavBarFloatingButton(),
        ),
      ),
    );
  }
}
