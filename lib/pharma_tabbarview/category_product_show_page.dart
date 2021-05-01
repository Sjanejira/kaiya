import 'package:flutter/cupertino.dart';
import "package:collection/collection.dart";
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/add_product_page/product_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:kaiya/pharma_widget/card_product_widget.dart';

class CategoryShowPage extends StatefulWidget {
  CategoryShowPage({this.widget, this.viewModel, this.category});
  final PharWelcome widget;
  final PharmaFirstPageViewModel viewModel;
  final String category;
  static const String id = 'category_show';

  @override
  _CategoryShowPage createState() => _CategoryShowPage();
}

class _CategoryShowPage extends State<CategoryShowPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final listCategory = widget.viewModel.product
        .where((Product element) => element.category == widget.category)
        .toList();
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
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: Text(
              widget.category,
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            margin: EdgeInsets.only(top: 10.h),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.7,
                crossAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: listCategory.length,
              itemBuilder: (BuildContext context, index) {
                return CardProduct(
                  image: 'asset/ms.png',
                  productname: listCategory[index].product_name,
                  beforesale: listCategory[index].price,
                  aftersale: listCategory[index].sell,
                  like: listCategory[index].like,
                  isonsale: listCategory[index].on_saled,
                  widget: widget.widget,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
