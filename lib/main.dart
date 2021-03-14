import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/appkaiya.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
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
        theme: ThemeData(primaryColor: Colors.white),
        initialRoute: TalkHome.id,
        routes: {
          PharHome.id: (context) => PharHome(),
          TalkSetting.id: (context) => TalkSetting(),
          TalkPatientQueue.id: (context) => TalkPatientQueue(),
          TalkHome.id: (context) => TalkHome(),
          TalkScreen.id: (context) => TalkScreen(),
          VoiceCall.id: (context) => VoiceCall(),
        },
      ),
    );
  }
}
