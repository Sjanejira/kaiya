import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_home.dart';
import 'package:kaiya/pharma_talk_screen/talk_home.dart';
import 'package:kaiya/pharma_talk_screen/talk_patient_queue.dart';
import 'package:kaiya/pharma_talk_screen/talk_screen.dart';
import 'package:kaiya/pharma_talk_screen/talk_setting.dart';
import 'package:kaiya/pharma_talk_screen/talk_widget/call_with_accept_popup.dart';
import 'package:kaiya/pharma_talk_screen/talk_widget/call_with_queue_popup.dart';
import 'package:provider/provider.dart';

class AppKaiYa extends StatefulWidget {
  const AppKaiYa({
    Key key,
  }) : super(key: key);

  @override
  _AppKaiYaState createState() => _AppKaiYaState();
}

class _AppKaiYaState extends State<AppKaiYa> {
  AppKaiYaViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = AppKaiYaViewModel();
  }

  @override
  Widget build(BuildContext context) {
    print("2");
    return StreamBuilder(
      stream: Provider.of<PharMaService2>(context).getCall(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          try {
            viewModel.call = snapshot?.data;
          } catch (e) {
            print(e);
          }
          if (viewModel.call != null) {
            viewModel.call.length == 1
                ? CupertinoAlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Patient ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Queue#1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff902E2E)),
                        ),
                      ],
                    ),
                    content: Text("Phone call to you"),
                    actions: [
                      CupertinoDialogAction(
                        child: Text(
                          'Wait',
                          style: TextStyle(color: Color(0xff2E828B)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text(
                          'Accept',
                          style: TextStyle(color: Color(0xff134153)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  )
                : CupertinoAlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Patient ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Queue#1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff902E2E)),
                        ),
                      ],
                    ),
                    content: Text("Phone call to you"),
                    actions: [
                      CupertinoDialogAction(
                        child: Text(
                          'Wait',
                          style: TextStyle(color: Color(0xff2E828B)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text(
                          'Accept',
                          style: TextStyle(color: Color(0xff134153)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
          }
        }
        return Text("peajfpojfpojrepvhgeoprhvoierhnjvoihso");
      },
    );
  }
}
