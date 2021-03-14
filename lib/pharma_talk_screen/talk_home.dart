import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/call_model.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_notification.dart';
import 'package:kaiya/pharma_screen/show_talk_mode.dart';
import 'package:kaiya/pharma_talk_screen/show_shopping_mode.dart';
import 'package:kaiya/pharma_talk_screen/talk_chat.dart';
import 'package:kaiya/pharma_talk_screen/talk_notification.dart';
import 'package:kaiya/pharma_talk_screen/talk_patient_queue.dart';
import 'package:kaiya/pharma_talk_screen/talk_profile_navigator.dart';
import 'package:kaiya/pharma_talk_screen/talk_widget/call_with_accept_popup.dart';
import 'package:kaiya/pharma_talk_screen/talk_widget/call_with_queue_popup.dart';
import 'package:kaiya/pharma_talk_screen/talk_widget/calling_to_patient_popup.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';
import 'package:provider/provider.dart';

class TalkHome extends StatefulWidget {
  static const String id = 'talk_home_screen';

  @override
  _TalkHome createState() => _TalkHome();
}

class _TalkHome extends State<TalkHome> with TickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  AppKaiYaViewModel viewModel;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    viewModel = AppKaiYaViewModel();
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
    int countBuild = 0;
    final List<Widget> _pageList = <Widget>[
      TalkPatientQueue(),
      TalkChat(),
      PharmaNotification(),
      TalkNavigatorProfile(),
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
        child: Stack(
          children: [
            Scaffold(
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
            StreamBuilder(
              stream: Provider.of<PharMaService2>(context).getCall(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data != null) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    try {
                      viewModel.call = snapshot.data;
                      viewModel.setList();
                      if (viewModel.call != null) {
                        if (viewModel.listCalling.length == 0) {
                          for (Call call in viewModel.listWaiting) {
                            showDialogCallWithAccept(context, viewModel, call);
                          }
                        } else if (viewModel.listCalling.length != 0) {
                          for (Call call in viewModel.listWaiting) {
                            showDialogCallWithHaveQueue(
                                context, viewModel, call);
                          }
                          viewModel.countWaiting++;
                        }
                        countBuild == 1
                            ? WidgetsBinding.instance.addPostFrameCallback((_) {
                                return viewModel.call.forEach((element) {});
                              })
                            : countBuild++;
                        return Container(
                          width: 0,
                          height: 0,
                        );
                      } else {
                        return Container(
                          width: 0,
                          height: 0,
                        );
                      }
                    } catch (e) {
                      print(e);
                      return Container(
                        width: 0,
                        height: 0,
                      );
                    }
                  } else {
                    return Container(
                      width: 0,
                      height: 0,
                    );
                  }
                } else {
                  return Container(
                    width: 0,
                    height: 0,
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ShowShoppingMode(),
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
