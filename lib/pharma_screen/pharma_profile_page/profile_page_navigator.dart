import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/add_product_page/add_product_page.dart';
import 'package:kaiya/pharma_screen/add_product_page/add_product_view_model.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account_page/pharma_edit_account_page_viewmodel.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account_page/pharma_edit_account.dart';
import 'package:kaiya/pharma_screen/pharma_mysale.dart';
import 'package:kaiya/pharma_screen/pharma_notification_setting_page/pharma_notification_setting.dart';
import 'package:kaiya/pharma_screen/pharma_notification_setting_page/pharma_notification_setting_viewmodel.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_detail.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order_model.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/manage_payment_pharma.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_model.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_viewmodel.dart';
import 'package:kaiya/pharma_screen/pharma_product_detial.dart';
import 'package:kaiya/pharma_screen/pharma_profile_page/pharma_profile.dart';
import 'package:kaiya/pharma_screen/pharma_shipping/pharma_shipping.dart';
import 'package:kaiya/pharma_tabbarview/category_product_show_page.dart';
import 'package:kaiya/pharma_talk_screen/talk_notification_setting_page/talk_notification_setting_viewmodel.dart';
import 'package:kaiya/setting.dart';
import 'package:kaiya/setting_languages.dart';
import 'package:provider/provider.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String mysale = '/mysale';
  static const String shipping = '/shipping';
  static const String editprofile = '/editprofile';
  static const String myorder = '/myorder';
  static const String orderdetail = '/orderdetail';
  static const String setting = '/setting';
  static const String addeditpayment = '/addeditpayment';
  static const String navigationsetting = '/navigationsetting';
  static const String languagesetting = '/languagesetting';
  static const String managepayment = '/managepayment';
}

class TabNavigatorProfilePage extends StatelessWidget {
  TabNavigatorProfilePage({this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;

  void _push(BuildContext context, String pagego) {
    var routeBuilders = _routeBuilders(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (pagego == "editprofile")
            return routeBuilders[TabNavigatorRoutes.editprofile](context);
          else if (pagego == "shipping")
            return routeBuilders[TabNavigatorRoutes.shipping](context);
          else if (pagego == "myorder")
            return routeBuilders[TabNavigatorRoutes.myorder](context);
          else if (pagego == "mysale")
            return routeBuilders[TabNavigatorRoutes.mysale](context);
          else if (pagego == "managepayment")
            return routeBuilders[TabNavigatorRoutes.managepayment](context);
          else if (pagego == "addeditpayment") {
            return routeBuilders[TabNavigatorRoutes.addeditpayment](context);
          } else if (pagego == "navigationsetting")
            return routeBuilders[TabNavigatorRoutes.navigationsetting](context);
          else if (pagego == "languagesetting")
            return routeBuilders[TabNavigatorRoutes.languagesetting](context);
          else
            return routeBuilders[TabNavigatorRoutes.setting](context);
        },
      ),
    );
  }

  void _pushmysale(BuildContext context, int index) {
    var routeBuilders = _routeBuildersmysale(context, index);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return routeBuilders[TabNavigatorRoutes.mysale](context);
        },
      ),
    );
  }

  void _pushorder(BuildContext context, Order data, int typeoforder) {
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

  Map<String, WidgetBuilder> _routeBuildersOrderdetail(
      BuildContext context, Order data, int typeoforder) {
    return {
      TabNavigatorRoutes.orderdetail: (context) => PharmaOrderDetail(
            data: data,
            typeoforder: typeoforder,
          ),
    };
  }

  Map<String, WidgetBuilder> _routeBuildersmysale(
      BuildContext context, int index) {
    return {
      TabNavigatorRoutes.mysale: (context) => PharmaMySales(
            onPush: (context, data, typeoforder) =>
                _pushorder(context, data, typeoforder),
            index: index,
          ),
    };
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) => PharmaProfile(
            onPush: (context, pagego) => _push(context, pagego),
            onPushMySale: (context, index) => _pushmysale(context, index),
          ),
      TabNavigatorRoutes.editprofile: (context) =>
          ChangeNotifierProvider<PharmaEditAccountViewModel>(
            create: (context) => PharmaEditAccountViewModel(),
            child: PharmaEditAcccount(),
          ),
      TabNavigatorRoutes.shipping: (context) => PharmaShipping(),
      TabNavigatorRoutes.myorder: (context) => PharmaOrder(
          onPush: (context, data, typeoforder) =>
              _pushorder(context, data, typeoforder)),
      TabNavigatorRoutes.managepayment: (context) =>
          ChangeNotifierProvider<PharmaPaymentViewModel>(
            create: (context) => PharmaPaymentViewModel(),
            child: PharmaPayment(
              onPush: (context, pagego, payment) =>
                  _pushManagePayment(context, pagego, payment),
            ),
          ),
      TabNavigatorRoutes.setting: (context) =>
          Setting(onPush: (context, pagego) => _push(context, pagego)),
      TabNavigatorRoutes.navigationsetting: (context) =>
          ChangeNotifierProvider<PharmaShoppingNotificationSettingViewModel>(
            create: (context) => PharmaShoppingNotificationSettingViewModel(),
            child: PharmaNotificationSetting(),
          ),
      TabNavigatorRoutes.languagesetting: (context) => SettingLanguages(),
    };
  }

  void _pushManagePayment(
      BuildContext context, String pagego, Payment payment) {
    var routeBuilders = pagego == "addnew"
        ? _routeBuildersManagepayment(context, "New Payment", payment)
        : _routeBuildersManagepayment(context, "Edit Payment", payment);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (pagego == "addnew") {
            return routeBuilders[TabNavigatorRoutes.addeditpayment](context);
          } else {
            return routeBuilders[TabNavigatorRoutes.addeditpayment](context);
          }
        },
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuildersManagepayment(
      BuildContext context, String title, Payment payment) {
    return {
      TabNavigatorRoutes.addeditpayment: (context) => PharmaManagePayment(
            title: title,
            payment: payment,
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
