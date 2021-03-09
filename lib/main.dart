import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/add_product_page/add_product_page.dart';
import 'package:kaiya/pharma_screen/category_list_product.dart';
import 'package:kaiya/pharma_screen/manage_payment_pharma.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account_page/pharma_edit_account.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
import 'package:kaiya/pharma_screen/pharma_mysale.dart';
import 'package:kaiya/pharma_screen/pharma_notification_setting.dart';
import 'package:kaiya/pharma_screen/pharma_order.dart';
import 'package:kaiya/pharma_screen/pharma_order_detail.dart';
import 'package:kaiya/pharma_screen/pharma_payment.dart';
import 'package:kaiya/pharma_screen/pharma_product_detial.dart';
import 'package:kaiya/pharma_screen/pharma_profile_page/pharma_profile.dart';
import 'package:kaiya/pharma_screen/pharma_shipping.dart';
import 'package:kaiya/setting.dart';
import 'package:kaiya/setting_languages.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Kaiya());
}

class Kaiya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PharMaService2>(
      create: (context) => PharMaService2(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        initialRoute: PharHome.id,
        routes: {
          PharHome.id: (context) => PharHome(),
          PharWelcome.id: (context) => PharWelcome(),
          PharAddProduct.id: (context) => PharAddProduct(),
          PharProductDetail.id: (context) => PharProductDetail(),
          CategoryListProduct.id: (context) => CategoryListProduct(),
          PharmaProfile.id: (context) => PharmaProfile(),
          Setting.id: (context) => Setting(),
          PharmaPayment.id: (context) => PharmaPayment(),
          SettingLanguages.id: (context) => SettingLanguages(),
          PharmaEditAcccount.id: (context) => PharmaEditAcccount(),
          PharmaManagePayment.id: (context) => PharmaManagePayment(),
          PharmaNotificationSetting.id: (context) =>
              PharmaNotificationSetting(),
          PharmaShipping.id: (context) => PharmaShipping(),
          PharmaMySales.id: (context) => PharmaMySales(),
          PharmaOrderDetail.id: (context) => PharmaOrderDetail(),
          PharmaOrder.id: (context) => PharmaOrder()
        },
      ),
    );
  }
}
