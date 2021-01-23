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
    bool _isProductEmpty = false;
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
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
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
                                            color:
                                                Color.fromRGBO(19, 65, 83, 1.0),
                                          ),
                                        ),
                                        alignment: Alignment.bottomLeft,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Icon(
                                              Icons.where_to_vote_rounded,
                                              color: Color.fromRGBO(
                                                  46, 130, 139, 1.0),
                                            ),
                                            margin: EdgeInsets.fromLTRB(
                                                0, 10.0, 5.0, 0),
                                          ),
                                          Container(
                                            child: Text(
                                              "บ้านกูเอง",
                                              style: TextStyle(
                                                fontSize: 15.0.sp,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1.0),
                                              ),
                                            ),
                                            margin: EdgeInsets.fromLTRB(
                                                0, 10.0, 5.0, 0),
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
                                      textColor:
                                          Color.fromRGBO(46, 130, 139, 1.0),
                                      child: Text("Edit Profile"),
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0.r),
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
                        ],
                      ),
                    ),
                  ),
                  expandedHeight: 165.h,
                  bottom: PreferredSize(
                    preferredSize: Size(double.infinity, 20.h),
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
                  ),
                ),
              ];
            },
            body: Container(
              child: _isProductEmpty
                  ? EmptyProductTabBarView(tabController: _tabController)
                  : HaveProductTabBarView(tabController: _tabController),
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          margin: EdgeInsets.only(top: 10.0.h),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.w, bottom: 10.h, top: 10.h),
                alignment: Alignment.centerLeft,
                child: Text(
                  "New Arrivals",
                  style: TextStyle(
                      color: Color.fromRGBO(144, 46, 46, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Wrap(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: GestureDetector(
                            child: Card(
                              color: Colors.white,
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                height: 196.h,
                                width: 147.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 5.h),
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        child: Icon(CupertinoIcons.ellipsis),
                                        onTap: () {
                                          print('click3');
                                        },
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('asset/ms.png'),
                                      height: 80.h,
                                      width: 140.w,
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(
                                          top: 10.h,
                                          left: 12.w,
                                          right: 12.w,
                                          bottom: 4.h),
                                      child: Text(
                                        "MusicZa",
                                        style: TextStyle(fontSize: 12.sp),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding:
                                              EdgeInsets.only(left: 12.0.w),
                                          child: Text(
                                            "฿700",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.grey[400]),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6.0.w),
                                          child: Text(
                                            "฿230",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color.fromRGBO(
                                                  144, 46, 46, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 12.w),
                                            alignment: Alignment.centerLeft,
                                            child: Icon(
                                              CupertinoIcons.suit_heart_fill,
                                              color: Color.fromRGBO(
                                                  46, 130, 139, 1),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 2.w),
                                            child: Text(
                                              "100",
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                                color: Color.fromRGBO(
                                                    46, 130, 139, 1),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              print('click');
                            },
                          ),
                        ),
                        Container(
                          child: Icon(
                            CupertinoIcons.bookmark_fill,
                            color: Color.fromRGBO(144, 46, 46, 1),
                          ),
                          padding: EdgeInsets.only(left: 20.w),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          child: Card(
                            color: Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 196.h,
                              width: 147.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 5.h),
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      child: Icon(CupertinoIcons.ellipsis),
                                      onTap: () {
                                        print('click3');
                                      },
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage('asset/pon.png'),
                                    height: 80.h,
                                    width: 140.w,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(
                                        top: 10.h,
                                        left: 12.w,
                                        right: 12.w,
                                        bottom: 4.h),
                                    child: Text(
                                      "Pon",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 12.0.w),
                                        child: Text(
                                          "฿700",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey[400]),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.0.w),
                                        child: Text(
                                          "฿230",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                Color.fromRGBO(144, 46, 46, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 12.w),
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            CupertinoIcons.suit_heart_fill,
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 2.w),
                                          child: Text(
                                            "100",
                                            style: TextStyle(
                                              fontSize: 8.sp,
                                              color: Color.fromRGBO(
                                                  46, 130, 139, 1),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            print('click');
                          },
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          child: Card(
                            color: Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              height: 196.h,
                              width: 147.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 5.h),
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      child: Icon(CupertinoIcons.ellipsis),
                                      onTap: () {
                                        print('click3');
                                      },
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage('asset/as.png'),
                                    height: 80.h,
                                    width: 140.w,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(
                                        top: 10.h,
                                        left: 12.w,
                                        right: 12.w,
                                        bottom: 4.h),
                                    child: Text(
                                      "As🧑‍💻",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 12.0.w),
                                        child: Text(
                                          "฿700",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey[400]),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.0.w),
                                        child: Text(
                                          "฿1000000000",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                Color.fromRGBO(144, 46, 46, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 12.w),
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            CupertinoIcons.suit_heart_fill,
                                            color:
                                                Color.fromRGBO(46, 130, 139, 1),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 2.w),
                                          child: Text(
                                            "123409238409",
                                            style: TextStyle(
                                              fontSize: 8.sp,
                                              color: Color.fromRGBO(
                                                  46, 130, 139, 1),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            print('click');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
