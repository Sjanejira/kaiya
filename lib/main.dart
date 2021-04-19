import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/appkaiya.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/login.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
import 'package:kaiya/pharma_screen/pharma_order_page/pharma_order.dart';
import 'package:kaiya/pharma_talk_screen/talk_home.dart';
import 'package:kaiya/pharma_talk_screen/talk_patient_queue.dart';
import 'package:kaiya/pharma_talk_screen/talk_screen.dart';
import 'package:kaiya/pharma_talk_screen/talk_setting.dart';
import 'package:kaiya/pharma_talk_screen/video.dart';
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
        initialRoute: PharHome.id,
        routes: {
          PharHome.id: (context) => PharHome(),
          TalkSetting.id: (context) => TalkSetting(),
          TalkPatientQueue.id: (context) => TalkPatientQueue(),
          TalkHome.id: (context) => TalkHome(),
          TalkScreen.id: (context) => TalkScreen(),
          VoiceCall.id: (context) => VoiceCall(),
          PharmaOrder.id: (context) => PharmaOrder(),
          Login.id: (context) => Login(),
        },
      ),
    );
  }
}
