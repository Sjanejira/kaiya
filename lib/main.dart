import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/patient_screen/patient_add_address.dart';
import 'package:kaiya/patient_screen/patient_edit_address.dart';
import 'package:kaiya/pharma_screen/add_product_page.dart';
import 'package:kaiya/pharma_screen/category_list_product.dart';
import 'package:kaiya/pharma_screen/manage_payment_pharma.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_edit_account.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
import 'package:kaiya/pharma_screen/pharma_mysale.dart';
import 'package:kaiya/pharma_screen/pharma_notification.dart';
import 'package:kaiya/pharma_screen/pharma_order.dart';
import 'package:kaiya/pharma_screen/pharma_order_detail.dart';
import 'package:kaiya/pharma_screen/pharma_payment.dart';
import 'package:kaiya/pharma_screen/pharma_product_detial.dart';
import 'package:kaiya/pharma_screen/pharma_profile.dart';
import 'package:kaiya/pharma_screen/pharma_shipping.dart';
import 'package:kaiya/setting.dart';
import 'package:kaiya/setting_languages.dart';

import 'package:kaiya/patient_screen/patient_shopping_wishlist.dart';
import 'package:kaiya/patient_screen/patient_select_payment.dart';
import 'package:kaiya/patient_screen/patient_select_shipping.dart';
import 'package:kaiya/patient_screen/patient_view_slip.dart';
import 'package:kaiya/patient_screen/patient_profile.dart';
import 'package:kaiya/patient_screen/patient_edit_profile.dart';
import 'package:kaiya/patient_screen/patient_notification_setting.dart';
import 'package:kaiya/patient_screen/patient_list_address.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Kaiya());
}

class Kaiya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: PatientAddAddress.id,
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
        PharmaNotificationSetting.id: (context) => PharmaNotificationSetting(),
        PharmaShipping.id: (context) => PharmaShipping(),
        PharmaMySales.id: (context) => PharmaMySales(),
        PharmaOrderDetail.id: (context) => PharmaOrderDetail(),
        PharmaOrder.id: (context) => PharmaOrder(),

        Wishlist.id: (context) => Wishlist(),
        SelectPayment.id: (context) => SelectPayment(),
        SelectShipping.id: (context) => SelectShipping(),
        ViewSlip.id: (context) => ViewSlip(),
        PatientProfile.id: (context) => PatientProfile(),
        PatientEditProfile.id: (context) => PatientEditProfile(),
        PatientNotificationSetting.id: (context) => PatientNotificationSetting(),
        PatientAddress.id: (context) => PatientAddress(),
        PatientAddAddress.id: (context) => PatientAddAddress(),
        PatientEditAddress.id: (context) => PatientEditAddress(),
      },
    );
  }
}
