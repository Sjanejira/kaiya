import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';

class AddPictureButton extends StatelessWidget {
  AddPictureButton({
    this.height,
    this.minwidth,
    this.paddingtop,
    this.margintop,
    this.label,
  });

  final double height;
  final double minwidth;
  final double paddingtop;
  final double margintop;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margintop),
      padding: EdgeInsets.only(top: paddingtop),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddButton(
            height: height,
            minwidth: minwidth,
            label: label,
          ),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  AddButton({this.height, this.minwidth, this.label});

  final double height;
  final double minwidth;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: Colors.white,
      minWidth: minwidth,
      height: height,
      child: DottedBorder(
        color: Color.fromRGBO(193, 193, 193, 1.0),
        borderType: BorderType.RRect,
        radius: Radius.circular(2.0.r),
        child: RaisedButton(
          color: Colors.grey,
          elevation: 0.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Color.fromRGBO(193, 193, 193, 1.0),
              ),
              Text(
                label,
                style: TextStyle(
                  color: Color.fromRGBO(193, 193, 193, 1.0),
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
