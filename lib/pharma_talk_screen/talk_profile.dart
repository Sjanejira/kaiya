import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account_page/pharma_edit_account_page_viewmodel.dart';
import 'package:provider/provider.dart';

class TalkProfile extends StatefulWidget {
  TalkProfile({this.onPush});
  static const String id = 'talk_profile';
  final Function onPush;

  @override
  _TalkProfile createState() => _TalkProfile();
}

class _TalkProfile extends State<TalkProfile> with TickerProviderStateMixin {
  PharmaEditAccountViewModel viewModel;
  @override
  void initState() {
    viewModel = PharmaEditAccountViewModel();
    super.initState();
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
            leading: Container(
              margin: EdgeInsets.only(left: 20.w),
              child: GestureDetector(
                onTap: () => widget.onPush(context, "setting"),
                child: Icon(
                  CupertinoIcons.gear,
                  color: Color.fromRGBO(193, 193, 193, 1),
                ),
              ),
            ),
            brightness: Brightness.light,
            title: const Text(
              'Profile',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
                color: Colors.white,
                width: double.infinity,
                child: FutureBuilder(
                    future:
                        Provider.of<PharMaService2>(context).getPharProfile(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        viewModel.pharProfile =
                            Provider.of<PharMaService2>(context).querysnapshot;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 65.r,
                              backgroundImage:
                                  NetworkImage(viewModel.pharProfile.imageUrl),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                              child: Text(
                                viewModel.pharProfile.pharmacy_name,
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 30.w),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => widget.onPush(context, "editprofile"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.person,
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: Text(
                                  "Account",
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => widget.onPush(context, "managepayment"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.money_dollar_circle,
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: Text(
                                  "Payment",
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 65, 83, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: Color.fromRGBO(193, 193, 193, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
