import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDialogCallWithAccept(context) {
  showDialog(
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
    },
  );
}
