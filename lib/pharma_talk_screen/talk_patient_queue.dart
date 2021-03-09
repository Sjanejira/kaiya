import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';

class TalkPatientQueue extends StatefulWidget {
  static const String id = 'talk_patient_queue';

  @override
  _TalkPatientQueue createState() => _TalkPatientQueue();
}

class _TalkPatientQueue extends State<TalkPatientQueue>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
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
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'My Patient Queue',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40, bottom: 20),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "0 Queue",
                      style: TextStyle(color: Color(0xffC1C1C1)),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 40, bottom: 8),
                                child: Text(
                                  "2:08 AM",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: CircleAvatar(
                                            radius: 20.r,
                                            backgroundImage:
                                                AssetImage('asset/ms.png'),
                                          ),
                                          margin: EdgeInsets.only(right: 10),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 5.h),
                                              child: Text(
                                                "Queue#1",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  CupertinoIcons.circle_fill,
                                                  color: Color(0xff2E828B),
                                                  size: 10,
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    "In Queue phone call",
                                                    style: TextStyle(
                                                      color: Color(0xff2E828B),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50.0,
                                          child: ElevatedButton(
                                            child: Icon(
                                              CupertinoIcons.phone_fill,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff2E828B),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          width: 50,
                                          height: 50.0,
                                          child: ElevatedButton(
                                            child: Icon(
                                              CupertinoIcons.video_camera_solid,
                                              color: Colors.white,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff902E2E),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      separatorBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Divider(color: Colors.grey),
                          ),
                      itemCount: 1),
                ),
              ],
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
          floatingActionButton: PharmaNavBarFloatingButton(),
        ),
      ),
    );
  }
}
