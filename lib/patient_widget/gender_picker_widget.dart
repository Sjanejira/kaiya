import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GengerPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: double.infinity,
        child: CupertinoPicker(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text('Male'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text('Female'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text('Not specified'),
            )
          ],
          backgroundColor: Color.fromRGBO(238, 238, 238, 1),
          itemExtent: 35,
        ),
      ),
    );
  }
}
