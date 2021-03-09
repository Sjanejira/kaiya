import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDialogCallToPatient(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(
          "Calling..",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "To Patient ",
            ),
            Text(
              "Queue#1",
              style: TextStyle(color: Color(0xff902E2E)),
            ),
          ],
        ),
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
