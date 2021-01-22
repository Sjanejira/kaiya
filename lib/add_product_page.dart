import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_widget/AddButton.dart';
import 'package:kaiya/pharma_widget/navbar/PharmaNavBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/PharmaNavBar.dart';

class PharAddProduct extends StatefulWidget {
  static const String id = 'add_product_screen';

  @override
  _PharAddProduct createState() => _PharAddProduct();
}

class _PharAddProduct extends State<PharAddProduct> {
  bool _lights = true;
  bool _darks = true;
  bool _greys = true;
  int selectedValue;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));

    return ScreenUtilInit(
      allowFontScaling: true,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'Add Product',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(
                top: 10.0.h,
                bottom: 50.0.h,
              ),
              padding: EdgeInsets.only(bottom: 10.0.h),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0.w),
                        child: AddProductButton(
                          height: 80.h,
                          minwidth: 65.w,
                          paddingtop: 10.h,
                          margintop: 20.h,
                          label: 'Add Picture',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Show Product",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0.h),
                        padding: EdgeInsets.only(right: 30.0.w),
                        child: CupertinoSwitch(
                          activeColor: Color.fromRGBO(46, 130, 139, 1),
                          value: _lights,
                          onChanged: (bool value) {
                            setState(() {
                              _lights = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Hot Deal",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0.h, bottom: 5.0.h),
                        padding: EdgeInsets.only(right: 30.0.w),
                        child: CupertinoSwitch(
                          activeColor: Color.fromRGBO(46, 130, 139, 1),
                          value: _darks,
                          onChanged: (bool value) {
                            setState(() {
                              _darks = value;
                            });
                          },
                        ),
                      ),
                    ],
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
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Product Name : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0.w),
                        child: Text(
                          "Vitamin",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
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
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Brand : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0.w),
                        child: Text(
                          "Vistra",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
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
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Category : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w, right: 20.w),
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.white,
                            onPressed: showPicker,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Supplymentary"),
                                Icon(
                                  CupertinoIcons.chevron_right,
                                  color: Colors.grey[350],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Price : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0.w),
                        child: Text(
                          "฿400",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Container(
                          margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                          padding: EdgeInsets.only(left: 30.0.w),
                          child: Text(
                            "Sell : ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(46, 130, 139, 1),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: Text(
                            "฿220",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(144, 46, 46, 1),
                            ),
                          ),
                        ),
                      ]),
                      Container(
                        margin: EdgeInsets.only(top: 5.0.h, bottom: 5.0.h),
                        padding: EdgeInsets.only(right: 30.0.w),
                        child: CupertinoSwitch(
                          activeColor: Color.fromRGBO(46, 130, 139, 1),
                          value: _greys,
                          onChanged: (bool value) {
                            setState(() {
                              _greys = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Detail : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(top: 13.0.h),
                          padding: EdgeInsets.only(
                            bottom: 10.0.h,
                            left: 5.0.w,
                            right: 30.0.w,
                          ),
                          child: Text(
                            "Blackmores Bilberry 2500 taken as a dietary supplement provides the nutritional value of bilberry extract.Provides anthocyanocides 9 mg/tablet from Bilberry extract 25 mg. Guaranteed standardized active substance",
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(0.0),
                    color: Color.fromRGBO(46, 130, 139, 1.0),
                    textColor: Colors.white,
                    child: Text("DONE"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0.r),
                    ),
                  ),
                ],
              ),
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

  showPicker() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300.0.h,
            child: CupertinoPicker(
              backgroundColor: Colors.white,
              onSelectedItemChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              itemExtent: 32.0,
              children: const [
                Text('Item01'),
                Text('Item02'),
                Text('Item03'),
              ],
            ),
          );
        });
  }
}
