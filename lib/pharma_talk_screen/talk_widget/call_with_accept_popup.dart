import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/call_model.dart';
import 'package:kaiya/pharma_talk_screen/voice.dart';

showDialogCallWithAccept(context, AppKaiYaViewModel viewModel, Call call) {
  WidgetsBinding.instance.addPostFrameCallback((_) => showCupertinoDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
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
                      fontWeight: FontWeight.bold, color: Color(0xff902E2E)),
                ),
              ],
            ),
            content: Text("${call.call_type} call to you"),
            actions: [
              CupertinoDialogAction(
                child: Text(
                  'Wait',
                  style: TextStyle(color: Color(0xff2E828B)),
                ),
                onPressed: () {
                  // Provider.of<PharMaService2>(context)
                  //     .updateData(viewModel.updateData("waiting", 1), "call");
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text(
                  'Accept',
                  style: TextStyle(color: Color(0xff134153)),
                ),
                onPressed: () {
                  // Provider.of<PharMaService2>(context)
                  //     .updateData(viewModel.updateData("calling", 1), "call");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VoiceCall()),
                  );
                },
              ),
            ],
          );
        },
      ));
}
