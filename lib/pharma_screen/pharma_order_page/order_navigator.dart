import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_detail.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String orderdetail = '/orderdetail';
}

class TabNavigatorOrder extends StatelessWidget {
  TabNavigatorOrder({this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;

  void _push(BuildContext context, Order data, int typeoforder) {
    var routeBuilders = _routeBuildersOrderdetail(context, data, typeoforder);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return routeBuilders[TabNavigatorRoutes.orderdetail](context);
        },
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) => PharmaOrder(
          onPush: (context, data, typeoforder) =>
              _push(context, data, typeoforder)),
    };
  }

  Map<String, WidgetBuilder> _routeBuildersOrderdetail(
      BuildContext context, Order data, int typeoforder) {
    return {
      TabNavigatorRoutes.orderdetail: (context) => PharmaOrderDetail(
            data: data,
            typeoforder: typeoforder,
          ),
    };
  }

  @override
  Widget build(BuildContext context) {
    var routeBuilders = _routeBuilders(context);

    return Navigator(
        key: navigatorKey,
        initialRoute: TabNavigatorRoutes.root,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
              builder: (context) => routeBuilders[routeSettings.name](context));
        });
  }
}
