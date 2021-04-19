import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';
import 'package:kaiya/pharma_widget/order_status_widget.dart';
import 'package:provider/provider.dart';

class PharmaOrder extends StatefulWidget {
  static const String id = 'pharma_order';
  PharmaOrder({this.onPush});
  final Function onPush;

  @override
  _PharmaOrder createState() => _PharmaOrder();
}

class _PharmaOrder extends State<PharmaOrder> with TickerProviderStateMixin {
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
              'New Order',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Container(
            child: StreamBuilder(
                stream: Provider.of<PharMaService2>(context).getOrder(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Order>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          switch (snapshot.data[index].order_status) {
                            case "preparing":
                              {
                                return OrderStatusWidget(
                                  typeoforder: 0,
                                  data: snapshot.data[index],
                                  widget: widget,
                                );
                              }
                            case "shipping":
                              {
                                return OrderStatusWidget(
                                  typeoforder: 1,
                                  data: snapshot.data[index],
                                  widget: widget,
                                );
                              }
                            case "completed":
                              {
                                return OrderStatusWidget(
                                  typeoforder: 2,
                                  data: snapshot.data[index],
                                  widget: widget,
                                );
                              }
                            case "cancelled":
                              {
                                return OrderStatusWidget(
                                  typeoforder: 3,
                                  data: snapshot.data[index],
                                  widget: widget,
                                );
                              }
                            default:
                              {
                                return OrderStatusWidget(
                                  typeoforder: 0,
                                  data: snapshot.data[index],
                                  widget: widget,
                                );
                              }
                          }
                        });
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
