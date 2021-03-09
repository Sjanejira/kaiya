import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/add_product_page/add_product_view_model.dart';
import 'package:kaiya/pharma_widget/add_button.dart';
import 'package:kaiya/pharma_widget/add_picture_button.dart';
import 'package:provider/provider.dart';

class PharAddProduct extends StatefulWidget {
  static const String id = 'add_product_screen';

  @override
  _PharAddProduct createState() => _PharAddProduct();
}

class _PharAddProduct extends State<PharAddProduct> {
  final productname = TextEditingController();
  final brand = TextEditingController();
  final price = TextEditingController();
  final sell = TextEditingController();
  final detail = TextEditingController();
  bool _lights = true;
  bool _darks = true;
  bool _greys = true;
  int selectedValue;
  AddProductViewModel viewModel;

  @override
  void initState() {
    viewModel = AddProductViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width,
      minWidth: 0,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: 0,
    ));
    return ScreenUtilInit(
      allowFontScaling: true,
      builder: () => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: const Text(
              'Add Product',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(
                top: 10.0.h,
                bottom: 50.0.h,
              ),
              padding: EdgeInsets.only(bottom: 10.0.h),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Consumer<AddProductViewModel>(
                    builder: (context, viewmodel, child) {
                      return Wrap(
                        children: [
                          viewmodel.images.length != 0
                              ? Container(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: GridView.count(
                                    crossAxisSpacing: 3,
                                    crossAxisCount: 3,
                                    shrinkWrap: true,
                                    children: List.generate(
                                        viewmodel.images.length, (index) {
                                      return Image.file(
                                        viewmodel.images[index],
                                        width: 100,
                                        height: 100,
                                      );
                                    }),
                                  ),
                                )
                              : Text(''),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30.0.w),
                            child: GestureDetector(
                              onTap: () => showimagepicker(viewmodel),
                              child: AddPictureButton(
                                height: 80.h,
                                minwidth: 65.w,
                                paddingtop: 10.h,
                                margintop: 10.h,
                                label: 'Add Picture',
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Show Product",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0.h),
                        padding: EdgeInsets.only(right: 30.0.w),
                        child: CupertinoSwitch(
                          activeColor: Color.fromRGBO(46, 130, 139, 1),
                          value: _lights,
                          onChanged: (bool value) {
                            setState(() {
                              _lights = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Hot Deal",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0.h, bottom: 5.0.h),
                        padding: EdgeInsets.only(right: 30.0.w),
                        child: CupertinoSwitch(
                          activeColor: Color.fromRGBO(46, 130, 139, 1),
                          value: _darks,
                          onChanged: (bool value) {
                            setState(() {
                              _darks = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Product Name : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            controller: productname,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Product name"),
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Brand : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            controller: brand,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Brand"),
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Category : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w, right: 20.w),
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.white,
                            onPressed: showPicker,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Supplymentary",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                Icon(
                                  CupertinoIcons.chevron_right,
                                  color: Colors.grey[350],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Price : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.0.w),
                          child: TextField(
                            controller: price,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Price"),
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                            padding: EdgeInsets.only(left: 30.0.w),
                            child: Text(
                              "Sell : ",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Color.fromRGBO(46, 130, 139, 1),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 5.0.w),
                              child: TextField(
                                controller: sell,
                                enabled: _greys,
                                decoration: InputDecoration(
                                    border: InputBorder.none, hintText: "Sell"),
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0.h, bottom: 5.0.h),
                        padding: EdgeInsets.only(right: 30.0.w),
                        child: CupertinoSwitch(
                          activeColor: Color.fromRGBO(46, 130, 139, 1),
                          value: _greys,
                          onChanged: (bool value) {
                            setState(() {
                              _greys = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                        padding: EdgeInsets.only(left: 30.0.w),
                        child: Text(
                          "Detail : ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromRGBO(46, 130, 139, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 4.0.h),
                          padding: EdgeInsets.only(
                            bottom: 10.0.h,
                            left: 5.0.w,
                            right: 30.0.w,
                          ),
                          child: TextField(
                            controller: detail,
                            maxLines: 6,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Detail"),
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.popUntil(
                            context, (Route<dynamic> route) => route.isFirst);
                      },
                      padding: EdgeInsets.all(0.0),
                      color: Color.fromRGBO(46, 130, 139, 1.0),
                      textColor: Colors.white,
                      child: Text("DONE"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showPicker() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300.0.h,
            child: CupertinoPicker(
              backgroundColor: Colors.white,
              onSelectedItemChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
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

  showimagepicker(AddProductViewModel viewmodel) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        viewmodel.imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      viewmodel.imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
