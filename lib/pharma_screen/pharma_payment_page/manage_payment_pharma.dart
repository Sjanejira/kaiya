import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_manage_payment_viewmodel.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_model.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_viewmodel.dart';
import 'package:kaiya/pharma_widget/add_button.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBarFloatinButton.dart';
import 'package:kaiya/pharma_widget/navbar/pharma_navBar.dart';
import 'package:provider/provider.dart';

class PharmaManagePayment extends StatefulWidget {
  PharmaManagePayment({this.payment, this.title});
  final Payment payment;
  final String title;
  static const String id = 'manage_payment_pharma';

  @override
  _PharmaManagePayment createState() => _PharmaManagePayment();
}

class _PharmaManagePayment extends State<PharmaManagePayment> {
  bool _lights = true;
  bool _darks = true;
  bool _greys = true;
  int selectedValue;
  bool isViewNull = true;
  PharmaManagePaymentViewModel viewModel;

  @override
  void initState() {
    viewModel = PharmaManagePaymentViewModel();
    if (widget.payment != null) {
      viewModel.payment = widget.payment;
      isViewNull = false;
    }
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
      allowFontScaling: true,
      builder: () => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: Text(
              widget.title,
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
                top: 30.0.h,
                bottom: 50.0.h,
              ),
              padding: EdgeInsets.only(bottom: 10.0.h),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Bank Name : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.only(right: 20.w, top: 2.h),
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.white,
                            onPressed: showPicker,
                            child: Row(
                              children: [
                                isViewNull
                                    ? Text(
                                        "Select Bank",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300),
                                      )
                                    : Text(
                                        viewModel.payment.bank_name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300),
                                      ),
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
                          "Account Number : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: isViewNull
                              ? TextField(
                                  controller:
                                      viewModel.textcontroller_account_number,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Account Number"),
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                )
                              : TextField(
                                  controller:
                                      viewModel.textcontroller_account_number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    fontSize: 12.sp,
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
                          "Name in bank account : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: isViewNull
                              ? TextField(
                                  controller:
                                      viewModel.textcontroller_account_holder,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Name in bank account"),
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                )
                              : TextField(
                                  controller:
                                      viewModel.textcontroller_account_holder,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    fontSize: 12.sp,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Show",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(19, 65, 83, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0.h, bottom: 5.0.h),
                        padding: EdgeInsets.only(right: 30.0.w),
                        child: isViewNull
                            ? CupertinoSwitch(
                                activeColor: Color.fromRGBO(46, 130, 139, 1),
                                value: _darks,
                                onChanged: (bool value) {
                                  setState(() {
                                    _darks = value;
                                    viewModel.isshow = value;
                                  });
                                },
                              )
                            : CupertinoSwitch(
                                activeColor: Color.fromRGBO(46, 130, 139, 1),
                                value: viewModel.isshow,
                                onChanged: (bool value) {
                                  setState(() {
                                    viewModel.isshow = value;
                                  });
                                },
                              ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    onPressed: () {
                      isViewNull
                          ? Provider.of<PharMaService2>(context, listen: false)
                              .addData(viewModel.updateData(), "payment")
                          : Provider.of<PharMaService2>(context, listen: false)
                              .updateData(viewModel.updateData(), "payment");
                      Navigator.pop(context);
                    },
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
