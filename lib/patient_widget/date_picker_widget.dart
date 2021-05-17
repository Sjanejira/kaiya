import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: double.infinity,
        child: CupertinoDatePicker(
            backgroundColor: Color.fromRGBO(250, 250, 250, 1),
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (dateTime) {
            }
        ),
      ),
    );
  }
}
