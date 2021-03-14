import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_viewmodel.dart';
import 'package:provider/provider.dart';

class PharmaPayment extends StatefulWidget {
  PharmaPayment({this.onPush});
  static const String id = 'pharma_payment';
  final Function onPush;

  @override
  _PharmaPayment createState() => _PharmaPayment();
}

class _PharmaPayment extends State<PharmaPayment>
    with TickerProviderStateMixin {
  PharmaPaymentViewModel viewModel;

  @override
  void initState() {
    viewModel = PharmaPaymentViewModel();
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
            brightness: Brightness.light,
            title: const Text(
              'Payment',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 30.h, bottom: 7.h, left: 30.w),
                child: Text(
                  "Payment",
                  style: TextStyle(
                    color: Color.fromRGBO(193, 193, 193, 1),
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                color: Colors.white,
                child: StreamBuilder(
                    stream: Provider.of<PharMaService2>(context).getPayment(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        viewModel.payment = snapshot.data;
                        if (viewModel.payment != null) {
                          return ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    widget.onPush(context, "edit",
                                        viewModel.payment[index]);
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Image(
                                              image: NetworkImage(viewModel
                                                  .payment[index]
                                                  .bank_imageUrl),
                                            ),
                                            width: 30.w,
                                            height: 30.w,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 8.w),
                                          ),
                                          Container(
                                            child: Text(
                                              viewModel
                                                  .payment[index].bank_name,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    19, 65, 83, 1),
                                                fontSize: 15.sp,
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
                                );
                              },
                              separatorBuilder: (context, index) => Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                              itemCount: snapshot.data.length);
                        } else {
                          return Center(
                            child: Text("No Payment Method"),
                          );
                        }
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
              GestureDetector(
                onTap: () {
                  widget.onPush(context, "addnew", null);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20.h),
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.add,
                            color: Color.fromRGBO(19, 65, 83, 1),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.w),
                            child: Text(
                              "Add New Payment",
                              style: TextStyle(
                                color: Color.fromRGBO(19, 65, 83, 1),
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
