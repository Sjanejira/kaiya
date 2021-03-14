import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/add_product_page/product_model.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:kaiya/pharma_tabbarview/category_tabbar_view.dart';
import 'package:kaiya/pharma_tabbarview/product_tabbar_view.dart';
import 'package:kaiya/pharma_tabbarview/shop_tabbar_view.dart';
import 'package:kaiya/pharma_widget/add_button.dart';
import 'package:provider/provider.dart';
import "package:collection/collection.dart";

class PharmaFirstPageViewWidget extends StatelessWidget {
  const PharmaFirstPageViewWidget(
      {Key key,
      @required this.pharprofile,
      @required this.widget,
      @required TabController tabController,
      this.viewModel})
      : _tabController = tabController,
        super(key: key);

  final PharProfile pharprofile;
  final PharWelcome widget;
  final TabController _tabController;
  final PharmaFirstPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Container(
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
                              child: CircleAvatar(
                                radius: 25.r,
                                backgroundImage:
                                    NetworkImage(pharprofile.imageUrl),
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
                                    pharprofile.pharmacy_name,
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
                                        color:
                                            Color.fromRGBO(46, 130, 139, 1.0),
                                      ),
                                      margin:
                                          EdgeInsets.fromLTRB(0, 10.0, 5.0, 0),
                                    ),
                                    Container(
                                      child: Text(
                                        "บ้านกูเอง",
                                        style: TextStyle(
                                          fontSize: 15.0.sp,
                                          color:
                                              Color.fromRGBO(46, 130, 139, 1.0),
                                        ),
                                      ),
                                      margin:
                                          EdgeInsets.fromLTRB(0, 10.0, 5.0, 0),
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
                                onPressed: () =>
                                    widget.onPush(context, "editprofile"),
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
                  ],
                ),
              ),
            ),
            expandedHeight: 190.h,
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 30.h),
              child: Column(
                children: [
                  Container(
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
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
                    child: GestureDetector(
                      onTap: () => widget.onPush(context, "addproduct"),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.add,
                            color: Color.fromRGBO(19, 65, 83, 1),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Text(
                              "Add New Product",
                              style: TextStyle(
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: Container(
        child: StreamBuilder(
            stream: Provider.of<PharMaService2>(context).getProduct(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                viewModel.product = snapshot.data;
                if (viewModel.product.length != 0) {
                  return HaveProductTabBarView(
                    tabController: _tabController,
                    widget: widget,
                    viewModel: viewModel,
                  );
                } else {
                  return EmptyProductTabBarView(tabController: _tabController);
                }
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}

class EmptyProductTabBarView extends StatelessWidget {
  EmptyProductTabBarView({@required TabController tabController, this.widget})
      : _tabController = tabController;

  final TabController _tabController;
  final PharWelcome widget;

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
          widget: widget,
        ),
        AddProductButton(
          height: 100.h,
          minwidth: 100.w,
          paddingtop: 120.h,
          margintop: 10.h,
          label: "Add Product",
          widget: widget,
        ),
        AddProductButton(
          height: 100.h,
          minwidth: 100.w,
          paddingtop: 120.h,
          margintop: 10.h,
          label: "Add Product",
          widget: widget,
        ),
      ],
    );
  }
}

class HaveProductTabBarView extends StatelessWidget {
  HaveProductTabBarView(
      {@required TabController tabController, this.widget, this.viewModel})
      : _tabController = tabController;
  final PharWelcome widget;
  final PharmaFirstPageViewModel viewModel;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        ShopTabBarView(
          widget: widget,
          viewModel: viewModel,
        ),
        ProductTabBarView(
          widget: widget,
          viewModel: viewModel,
        ),
        CategoryTabBarView(
          widget: widget,
          viewModel: viewModel,
        ),
      ],
    );
  }
}
