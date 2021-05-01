import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_call.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_main.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_on_queue.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_pharma_info.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_video_call.dart';

import 'package:kaiya/patient_screen/screen_shopping_mode/patient_add_address.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_chat_shopping_mode.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_edit_address.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_edit_profile.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_in_chat_shopping_mode.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_list_address.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_notification.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_notification_setting.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_product_detail.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_profile.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_see_all_product.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_select_each_categories.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_select_payment.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_select_payment_my_order.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_select_shipping.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_select_shipping_my_order.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_shopping_cart.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_shopping_history.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_shopping_mode_home.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_shopping_wishlist.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_view_slip.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_call.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_pharma_detail.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_pharma_near_you.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_queue.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_select_pharma_map.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_video_call.dart';

import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/select_role.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_login.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_sign_up.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_pin_location_map.dart';
import 'package:kaiya/patient_widget/google_map.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_all_pharma_near_you.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_chat.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_home.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_in_chat.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_order_more.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_w_ordermore_chat.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_wo_ordermore_chat.dart';


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
      initialRoute: PatientHome.id,
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

        //shopping mode
        PatientAddAddress.id: (context) => PatientAddAddress(),
        ChatShopping.id: (context) => ChatShopping(),
        PatientEditAddress.id: (context) => PatientEditAddress(),
        PatientEditProfile.id: (context) => PatientEditProfile(),
        InChat.id: (context) => InChat(),
        PatientAddress.id: (context) => PatientAddress(),
        PatientNotification.id: (context) => PatientNotification(),
        PatientNotificationSetting.id: (context) => PatientNotificationSetting(),
        PatientProductDetail.id: (context) => PatientProductDetail(),
        PatientProfile.id: (context) => PatientProfile(),
        PatientSeeAllProduct.id: (context) => PatientSeeAllProduct(),
        PatientSelectEachCategories.id: (context) => PatientSelectEachCategories(),
        SelectPayment.id: (context) => SelectPayment(),
        MyorderSelectPayment.id: (context) => MyorderSelectPayment(), //
        SelectShipping.id: (context) => SelectShipping(),
        MyorderSelectShipping.id: (context) => MyorderSelectShipping(), //
        ShoppingCart.id: (context) => ShoppingCart(), //
        ShoppingHistory.id: (context) => ShoppingHistory(),
        PatientHome.id: (context) => PatientHome(),
        ShoppingWishlist.id: (context) => ShoppingWishlist(),
        ViewSlip.id: (context) => ViewSlip(),

        //emergency mode
        EmergencyHome.id: (context) => EmergencyHome(),
        EmergencyPharmaInfo.id: (context) => EmergencyPharmaInfo(),
        EmergencyOnQueue.id: (context) => EmergencyOnQueue(),
        EmergencyCall.id: (context) => EmergencyCall(),
        EmergencyVideoCall.id: (context) => EmergencyVideoCall(),


        //talk with pharmaist mode
        SelectRole.id: (context) => SelectRole(),
        Login.id: (context) => Login(),
        Signup.id: (context) => Signup(),
        PinOnGGMap.id: (context) => PinOnGGMap(),
        Mapgg.id: (context) => Mapgg(),
        SeeAllPharma.id: (context) => SeeAllPharma(),
        PaitentChat.id: (context) => PaitentChat(),
        ChatWithPharma.id:(context) => ChatWithPharma(),
        ChatWithMoreOrder.id: (context) => ChatWithMoreOrder(),
        ChatNoMore.id: (context) => ChatNoMore(),
        Ordermore.id: (context) => Ordermore(),
        PatientTalkHome.id: (context) => PatientTalkHome(),
        CallPharma.id: (context) => CallPharma(),
        VideoCallPharma.id: (context) => VideoCallPharma(),
        OnQueue.id: (context) => OnQueue(),
        PharmaInfo.id: (context) => PharmaInfo(),
        PharmaPage.id: (context) => PharmaPage(),
        SelectOnMap.id: (context) => SelectOnMap(),

      },
    );
  }
}