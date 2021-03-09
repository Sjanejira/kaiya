import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDialogCallWithHaveQueue(context) {
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
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
