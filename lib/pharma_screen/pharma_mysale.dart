import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/order_status_widget.dart';

class PharmaMySales extends StatefulWidget {
  PharmaMySales({this.index, this.onPush});
  static const String id = 'pharma_mysales';
  final int index;
  final Function onPush;

  @override
  _PharmaMySales createState() => _PharmaMySales();
}

class _PharmaMySales extends State<PharmaMySales>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: 4, vsync: this, initialIndex: widget.index);
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
      builder: () => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'My Sales',
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
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    bottom: PreferredSize(
                      preferredSize: Size(double.infinity, 10.h),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 10.h),
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: TabBar(
                              isScrollable: true,
                              controller: _tabController,
                              indicatorColor: Color.fromRGBO(46, 130, 139, 1.0),
                              labelColor: Color.fromRGBO(46, 130, 139, 1.0),
                              unselectedLabelColor: Colors.grey,
                              tabs: <Tab>[
                                Tab(text: "Preparing"),
                                Tab(text: "Shipping"),
                                Tab(text: "Completed"),
                                Tab(text: "Cancelled"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: HaveProductTabBarView(tabController: _tabController),
          ),
        ),
      ),
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
          child: ListView(
            children: [
              OrderStatusWidget(
                typeoforder: 0,
              ),
              OrderStatusWidget(
                typeoforder: 0,
              ),
              OrderStatusWidget(
                typeoforder: 0,
              ),
              OrderStatusWidget(
                typeoforder: 0,
              ),
              OrderStatusWidget(
                typeoforder: 0,
              ),
              OrderStatusWidget(
                typeoforder: 0,
              ),
            ],
          ),
        ),
        Container(
          child: ListView(
            children: [
              OrderStatusWidget(
                typeoforder: 1,
              ),
              OrderStatusWidget(
                typeoforder: 1,
              ),
            ],
          ),
        ),
        Container(
          child: ListView(
            children: [
              OrderStatusWidget(
                typeoforder: 2,
              ),
              OrderStatusWidget(
                typeoforder: 2,
              ),
            ],
          ),
        ),
        Container(
          child: ListView(
            children: [
              OrderStatusWidget(
                typeoforder: 3,
              ),
              OrderStatusWidget(
                typeoforder: 3,
              ),
              OrderStatusWidget(
                typeoforder: 3,
              ),
              OrderStatusWidget(
                typeoforder: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
