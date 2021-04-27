import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/add_product_page.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account.dart';
import 'package:kaiya/pharma_screen/pharma_product_detial.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String editprofile = '/editprofile';
  static const String productdetail = '/productdetail';
  static const String addproduct = '/addproduct';
}

class TabNavigatorFirstPage extends StatelessWidget {
  TabNavigatorFirstPage({this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;

  void _push(BuildContext context, String pagego) {
    var routeBuilders = _routeBuilders(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (pagego == "editprofile")
            return routeBuilders[TabNavigatorRoutes.editprofile](context);
          else if (pagego == "productdetail")
            return routeBuilders[TabNavigatorRoutes.productdetail](context);
          else
            return routeBuilders[TabNavigatorRoutes.addproduct](context);
        },
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) =>
          PharWelcome(onPush: (context, pagego) => _push(context, pagego)),
      TabNavigatorRoutes.editprofile: (context) => PharmaEditAcccount(),
      TabNavigatorRoutes.productdetail: (context) => PharProductDetail(),
      TabNavigatorRoutes.addproduct: (context) => PharAddProduct(),
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
