import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showPickerProvince(context) {
  int selectedvalue;
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300.0.h,
          child: CupertinoPicker(
            backgroundColor: Colors.white,
            onSelectedItemChanged: (value) {
              selectedvalue = value;
            },
            itemExtent: 32.0,
            children: const [
              Text('Item01'),
              Text('Item02'),
              Text('Item03'),
            ],
          ),
        );
      });
}
