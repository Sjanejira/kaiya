import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
import 'package:kaiya/pharma_talk_screen/talk_home.dart';

class ShowTalkMode extends StatefulWidget {
  static const String id = 'show_talkmode';

  @override
  _ShowTalkMode createState() => _ShowTalkMode();
}

class _ShowTalkMode extends State<ShowTalkMode> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(milliseconds: 2200), () {
        _createRoute();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Talk Mode",
            style: TextStyle(
              fontSize: 30,
              color: Color(0xffE2E2E2),
            ),
          ),
        ),
      ),
    );
  }

  void _createRoute() {
    Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => TalkHome(),
          transitionDuration: Duration(milliseconds: 3000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            AnimationController animation2 = AnimationController(
              vsync: this,
              duration: Duration(milliseconds: 500),
            );
            var begin = 0.0;
            var end = 1.0;
            var curve = Curves.ease;

            var tween = Tween<double>(begin: begin, end: end);
            var curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return FadeTransition(
              opacity: tween.animate(curvedAnimation),
              child: child,
            );
          }),
      (route) => false,
    );
  }
}
