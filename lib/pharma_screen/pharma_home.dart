import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/first_page_navigator.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_notification.dart';
import 'package:kaiya/pharma_screen/pharma_notification_setting_page/pharma_notification_setting.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order.dart';
import 'package:kaiya/pharma_screen/pharma_profile_page/pharma_profile.dart';
import 'package:kaiya/pharma_screen/show_talk_mode.dart';
import 'package:kaiya/pharma_tabbarview/category_tabbar_view.dart';
import 'package:kaiya/pharma_talk_screen/show_shopping_mode.dart';
import 'package:kaiya/pharma_widget/add_button.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';
import 'package:kaiya/pharma_tabbarview/shop_tabbar_view.dart';

class PharHome extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _PharHome createState() => _PharHome();
}

class _PharHome extends State<PharHome> with TickerProviderStateMixin {
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
    final List<Widget> _pageList = <Widget>[
      TabNavigatorFirstPage(),
      PharmaOrder(),
      PharmaNotification(),
      PharmaProfile(),
    ];

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
          body: Container(
            child: IndexedStack(
              index: _selectedIndex,
              children: _pageList,
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 10,
            notchMargin: 5,
            shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.fill,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 30.0.w,
                          top: 5.0.h,
                        ),
                        child: IconButton(
                          color: _selectedIndex == 0
                              ? Color.fromRGBO(46, 130, 139, 1.0)
                              : Color.fromRGBO(226, 226, 226, 1.0),
                          icon: Icon(
                            CupertinoIcons.home,
                            size: 33.sp,
                          ),
                          onPressed: () {
                            _onItemTapped(0);
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0.w,
                          top: 5.0.h,
                        ),
                        child: IconButton(
                          color: _selectedIndex == 1
                              ? Color.fromRGBO(46, 130, 139, 1.0)
                              : Color.fromRGBO(226, 226, 226, 1.0),
                          icon: Icon(
                            CupertinoIcons.square_list,
                            size: 33.sp,
                          ),
                          onPressed: () {
                            _onItemTapped(1);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 20.0.w,
                          top: 5.0.h,
                        ),
                        child: IconButton(
                          color: _selectedIndex == 2
                              ? Color.fromRGBO(46, 130, 139, 1.0)
                              : Color.fromRGBO(226, 226, 226, 1.0),
                          icon: Icon(
                            CupertinoIcons.bell,
                            size: 33.sp,
                          ),
                          onPressed: () {
                            _onItemTapped(2);
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 30.0.w,
                        top: 5.0.h,
                      ),
                      child: IconButton(
                        color: _selectedIndex == 3
                            ? Color.fromRGBO(46, 130, 139, 1.0)
                            : Color.fromRGBO(226, 226, 226, 1.0),
                        icon: Icon(
                          CupertinoIcons.person,
                          size: 33.0.sp,
                        ),
                        onPressed: () {
                          _onItemTapped(3);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: PharmaNavBarFloatingButton(
            creatRoute: () => _createRoute(),
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => ShowTalkMode(),
        transitionDuration: Duration(milliseconds: 1000),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          AnimationController animation2 = AnimationController(
            vsync: this,
            duration: Duration(milliseconds: 500),
          );
          var begin = 0.0;
          var end = 1.0;
          var curve = Curves.ease;

          var tween = Tween<double>(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return FadeTransition(
            opacity: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }
}

class EmptyProductTabBarView extends StatelessWidget {
  EmptyProductTabBarView({
    @required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
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
    );
  }
}

class HaveProductTabBarView extends StatelessWidget {
  HaveProductTabBarView({
    @required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        ShopTabBarView(),
        AddProductButton(
          height: 100.h,
          minwidth: 100.w,
          paddingtop: 120.h,
          margintop: 10.h,
          label: "Add Product",
        ),
        CategoryTabBarView(),
      ],
    );
  }
}
