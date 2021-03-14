import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiya/appkaiya_viewmodel.dart';
import 'package:kaiya/call_model.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:provider/provider.dart';

showDialogCallWithHaveQueue(context, AppKaiYaViewModel viewModel, Call call) {
  WidgetsBinding.instance.addPostFrameCallback((_) => showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
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
            content: Column(
              children: [
                Text("Phone call to you"),
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Text(
                    "(you have 1 queue before)",
                    style: TextStyle(color: Color(0xffC1C1C1)),
                  ),
                )
              ],
            ),
            actions: [
              CupertinoDialogAction(
                child: Text(
                  'Wait',
                  style: TextStyle(color: Color(0xff2E828B)),
                ),
                onPressed: () {
                  Provider.of<PharMaService2>(context)
                      .updateData(viewModel.updateData("waiting", 1), "call");
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      ));
}
