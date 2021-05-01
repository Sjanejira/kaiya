import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class PharmaNotification extends StatefulWidget {
  static const String id = 'pharma_notification';

  @override
  _PharmaNotification createState() => _PharmaNotification();
}

class _PharmaNotification extends State<PharmaNotification>
    with TickerProviderStateMixin {
  PharmaOrderViewModel viewModel;

  @override
  void initState() {
    viewModel = PharmaOrderViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final format = DateFormat('HH:mm a');
    final dayformat = DateFormat('dd MMM');
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
              'Notification',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Container(
            margin: EdgeInsets.only(top: 10.h),
            child: StreamBuilder(
                stream: Provider.of<PharMaService2>(context).getOrder(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Order>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          padding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 20.w),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[350],
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  3.0, // Move to right 10  horizontally
                                  8.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 20.r,
                                  backgroundImage: NetworkImage(
                                      snapshot.data[index].patient_imageUrl),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 5.h),
                                        child: Text(
                                          snapshot.data[index].patient_name,
                                          style: TextStyle(
                                            color: Color(0xff134153),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          snapshot.data[index].order_status,
                                          style: TextStyle(
                                            color: Color(0xff902E2E),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      dayformat.format(
                                        DateTime.parse(
                                          snapshot.data[index].time_order
                                              .toDate()
                                              .toLocal()
                                              .toString(),
                                        ),
                                      ),
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          color: Color(0xffC1C1C1)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      format.format(
                                        DateTime.parse(
                                          snapshot.data[index].time_order
                                              .toDate()
                                              .toString(),
                                        ),
                                      ),
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          color: Color(0xffC1C1C1)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ),
      ),
    );
  }
}
