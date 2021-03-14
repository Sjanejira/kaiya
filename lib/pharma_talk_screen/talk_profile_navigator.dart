import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/manage_payment_pharma.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account_page/pharma_edit_account.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account_page/pharma_edit_account_page_viewmodel.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_model.dart';
import 'package:kaiya/pharma_screen/pharma_payment_page/pharma_payment_viewmodel.dart';
import 'package:kaiya/pharma_talk_screen/talk_notification_setting_page/talk_notification_setting.dart';
import 'package:kaiya/pharma_talk_screen/talk_notification_setting_page/talk_notification_setting_viewmodel.dart';
import 'package:kaiya/pharma_talk_screen/talk_profile.dart';
import 'package:kaiya/pharma_talk_screen/talk_setting.dart';
import 'package:kaiya/setting_languages.dart';
import 'package:provider/provider.dart';

class TalkNavigatorRoutes {
  static const String root = '/';
  static const String editprofile = '/editprofile';
  static const String managepayment = '/managepayment';
  static const String setting = '/setting';
  static const String addeditpayment = '/addeditpayment';
  static const String navigationsetting = '/navigationsetting';
  static const String languagesetting = '/languagesetting';
}

class TalkNavigatorProfile extends StatelessWidget {
  TalkNavigatorProfile({this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;

  void _push(BuildContext context, String pagego) {
    var routeBuilders = _routeBuilders(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (pagego == "editprofile")
            return routeBuilders[TalkNavigatorRoutes.editprofile](context);
          else if (pagego == "managepayment")
            return routeBuilders[TalkNavigatorRoutes.managepayment](context);
          else if (pagego == "addeditpayment") {
            return routeBuilders[TalkNavigatorRoutes.addeditpayment](context);
          } else if (pagego == "navigationsetting")
            return routeBuilders[TalkNavigatorRoutes.navigationsetting](
                context);
          else if (pagego == "languagesetting")
            return routeBuilders[TalkNavigatorRoutes.languagesetting](context);
          else
            return routeBuilders[TalkNavigatorRoutes.setting](context);
        },
      ),
    );
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
            return routeBuilders[TalkNavigatorRoutes.addeditpayment](context);
          } else {
            return routeBuilders[TalkNavigatorRoutes.addeditpayment](context);
          }
        },
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuildersManagepayment(
      BuildContext context, String title, Payment payment) {
    return {
      TalkNavigatorRoutes.addeditpayment: (context) => PharmaManagePayment(
            title: title,
            payment: payment,
          ),
    };
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TalkNavigatorRoutes.root: (context) =>
          ChangeNotifierProvider<PharmaEditAccountViewModel>(
            create: (context) => PharmaEditAccountViewModel(),
            child: TalkProfile(
                onPush: (context, pagego) => _push(context, pagego)),
          ),
      TalkNavigatorRoutes.editprofile: (context) =>
          ChangeNotifierProvider<PharmaEditAccountViewModel>(
            create: (context) => PharmaEditAccountViewModel(),
            child: PharmaEditAcccount(),
          ),
      TalkNavigatorRoutes.managepayment: (context) =>
          ChangeNotifierProvider<PharmaPaymentViewModel>(
            create: (context) => PharmaPaymentViewModel(),
            child: PharmaPayment(
              onPush: (context, pagego, payment) =>
                  _pushManagePayment(context, pagego, payment),
            ),
          ),
      TalkNavigatorRoutes.setting: (context) =>
          TalkSetting(onPush: (context, pagego) => _push(context, pagego)),
      TalkNavigatorRoutes.navigationsetting: (context) =>
          ChangeNotifierProvider<PharmaNotificationSettingViewModel>(
            create: (context) => PharmaNotificationSettingViewModel(),
            child: TalkNotificationSetting(),
          ),
      TalkNavigatorRoutes.languagesetting: (context) => SettingLanguages(),
    };
  }

  @override
  Widget build(BuildContext context) {
    var routeBuilders = _routeBuilders(context);

    return Navigator(
        key: navigatorKey,
        initialRoute: TalkNavigatorRoutes.root,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
              builder: (context) => routeBuilders[routeSettings.name](context));
        });
  }
}
