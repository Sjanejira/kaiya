import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:kaiya/patient_widget/google_map.dart';

class PinOnGGMap extends StatefulWidget {
  static const String id = 'patient_pin_location_on_ggmap';

  @override
  _PinOnGGMap createState() => _PinOnGGMap();
}

class _PinOnGGMap extends State<PinOnGGMap> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));

    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back_ios_outlined,
              color: Color.fromRGBO(193, 193, 193, 1),
            ),
          ),
          body: Column(
            children: [
              Container(
                width: 390,
                height: 693,
                child: Mapgg(),
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          //nev bar
        ),
      ),
    );
  }
}
