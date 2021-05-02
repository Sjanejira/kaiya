import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_call.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_main.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_on_queue.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_pharma_info.dart';
import 'package:kaiya/patient_screen/screen_emergency_mode/patient_emergency_video_call.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/my_order_pay.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/my_order_prepare.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/my_order_shipping.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/my_order_success.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_view_pharmacy_categories.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_view_pharmacy_each_categories.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_view_pharmacy_product.dart';
import 'package:kaiya/patient_screen/screen_shopping_mode/patient_view_pharmacy_shop.dart';

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
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_delivery.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_fav_pharma.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_history.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_pharma_detail.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_pharma_near_you.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_queue.dart';
import 'package:kaiya/patient_screen/screen_talk_to_pharmacist/patient_talk_schedule.dart';
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

import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
import 'package:kaiya/pharma_talk_screen/talk_home.dart';
import 'package:kaiya/pharma_talk_screen/talk_patient_queue.dart';
import 'package:kaiya/pharma_talk_screen/talk_screen.dart';
import 'package:kaiya/pharma_talk_screen/talk_setting.dart';
import 'package:kaiya/pharma_talk_screen/voice.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Kaiya());
}

class Kaiya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PharMaService2>(
          create: (context) => PharMaService2(),
        ),
        ChangeNotifierProvider<AppKaiYaViewModel>(
          create: (context) => AppKaiYaViewModel(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            primaryColorDark: Colors.white,
            primaryColorLight: Colors.white,
            primaryColor: Colors.white,
            accentColor: Color(0xff134153)),
        initialRoute: SetSchedule.id,
        routes: {
          PharHome.id: (context) => PharHome(),
          TalkSetting.id: (context) => TalkSetting(),
          TalkPatientQueue.id: (context) => TalkPatientQueue(),
          TalkHome.id: (context) => TalkHome(),
          TalkScreen.id: (context) => TalkScreen(),
          VoiceCall.id: (context) => VoiceCall(),
          PharmaOrder.id: (context) => PharmaOrder(),
          Login.id: (context) => Login(),

          //shopping mode
          PatientAddAddress.id: (context) => PatientAddAddress(),
          ChatShopping.id: (context) => ChatShopping(), //InChat
          PatientEditAddress.id: (context) => PatientEditAddress(),
          PatientEditProfile.id: (context) => PatientEditProfile(),
          InChat.id: (context) => InChat(),
          PatientAddress.id: (context) => PatientAddress(),
          PatientNotification.id: (context) => PatientNotification(),
          PatientNotificationSetting.id: (context) => PatientNotificationSetting(),
          PatientProductDetail.id: (context) => PatientProductDetail(),
          PatientProfile.id: (context) => PatientProfile(), //PatientEditProfile,ShoppingWishlist,ShoppingHistory,MyOrderPay,MyOrderPrepare,MyOrderShipping,MyOrderSuccess
          PatientSeeAllProduct.id: (context) => PatientSeeAllProduct(),
          PatientSelectEachCategories.id: (context) => PatientSelectEachCategories(),
          SelectPayment.id: (context) => SelectPayment(),
          MyorderSelectPayment.id: (context) => MyorderSelectPayment(), //SelectPayment
          SelectShipping.id: (context) => SelectShipping(),
          MyorderSelectShipping.id: (context) => MyorderSelectShipping(), //SelectShipping
          ShoppingCart.id: (context) => ShoppingCart(), //
          ShoppingHistory.id: (context) => ShoppingHistory(),
          PatientHome.id: (context) => PatientHome(), //PatientSeeAllProduct,PatientSelectEachCategories,ShoppingCart,PatientTalkHome,PatientNotification,PatientProfile
          ShoppingWishlist.id: (context) => ShoppingWishlist(),
          ViewSlip.id: (context) => ViewSlip(),
          ViewPharmaShop.id: (context) => ViewPharmaShop(), //ViewPharmaProduct,ViewPharmaCategories,ShoppingCart,InChat
          ViewPharmaProduct.id: (context) => ViewPharmaProduct(),//ViewPharmaShop,ViewPharmaCategories,ShoppingCart,InChat
          ViewPharmaCategories.id: (context) => ViewPharmaCategories(),//ViewPharmaProduct,ViewPharmaShp,ShoppingCart,InChat,ViewPharmaMedicine
          ViewPharmaMedicine.id: (context) => ViewPharmaMedicine(),
          MyOrderPay.id: (context) => MyOrderPay(),
          MyOrderPrepare.id: (context) => MyOrderPrepare(),
          MyOrderShipping.id: (context) => MyOrderShipping(),
          MyOrderSuccess.id: (context) => MyOrderSuccess(),

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
          Mapgg.id: (context) => Mapgg(), //wiget
          SeeAllPharma.id: (context) => SeeAllPharma(),
          //flow chat
          PaitentChat.id: (context) => PaitentChat(),
          ChatWithPharma.id: (context) => ChatWithPharma(),
          ChatWithMoreOrder.id: (context) => ChatWithMoreOrder(),
          ChatNoMore.id: (context) => ChatNoMore(),
          Ordermore.id: (context) => Ordermore(),

          PatientTalkHome.id: (context) => PatientTalkHome(), //EmergencyHome,SelectOnMap,PharmaPage,SeeAllPharma,PaitentChat,PatientHome,SelectDelivering,FavPharmacy,History
          CallPharma.id: (context) => CallPharma(),
          VideoCallPharma.id: (context) => VideoCallPharma(),
          OnQueue.id: (context) => OnQueue(),
          PharmaInfo.id: (context) => PharmaInfo(),
          PharmaPage.id: (context) => PharmaPage(), //PharmaInfo,CallPharma,VideoCallPharma,OnQueue,ChatWithPharma
          SelectOnMap.id: (context) => SelectOnMap(),
          SelectDelivering.id: (context) => SelectDelivering(), //PinOnGGMap
          FavPharmacy.id: (context) => FavPharmacy(),
          History.id: (context) => History(),
          SetSchedule.id: (context) => SetSchedule(),
        },
      ),
    );
  }
}
