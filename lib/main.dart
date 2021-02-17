import 'package:flutter/material.dart';
import 'package:kaiya/pharma_screen/add_product_page.dart';
import 'package:kaiya/pharma_screen/category_list_product.dart';
import 'package:kaiya/pharma_screen/manage_payment_pharma.dart';
import 'package:kaiya/pharma_screen/phar_first_page.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account.dart';
import 'package:kaiya/pharma_screen/pharma_mysale.dart';
import 'package:kaiya/pharma_screen/pharma_notification.dart';
import 'package:kaiya/pharma_screen/pharma_order_detail.dart';
import 'package:kaiya/pharma_screen/pharma_payment.dart';
import 'package:kaiya/pharma_screen/pharma_product_detial.dart';
import 'package:kaiya/pharma_screen/pharma_profile.dart';
import 'package:kaiya/pharma_screen/pharma_shipping.dart';
import 'package:kaiya/setting.dart';
import 'package:kaiya/setting_languages.dart';

void main() {
  runApp(Kaiya());
}

class Kaiya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: PharmaOrderDetail.id,
      routes: {
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
        PharmaNotificationSetting.id: (context) => PharmaNotificationSetting(),
        PharmaShipping.id: (context) => PharmaShipping(),
        PharmaMySales.id: (context) => PharmaMySales(),
        PharmaOrderDetail.id: (context) => PharmaOrderDetail(),
      },
    );
  }
}
