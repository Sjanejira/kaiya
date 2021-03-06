import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:kaiya/pharma_widget/card_product_widget.dart';
import 'package:provider/provider.dart';

class ShopTabBarView extends StatelessWidget {
  ShopTabBarView({this.widget, this.viewModel});
  final PharWelcome widget;
  final PharmaFirstPageViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      margin: EdgeInsets.only(top: 10.0.h),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.w, bottom: 10.h, top: 10.h),
            alignment: Alignment.centerLeft,
            child: Text(
              "New Arrivals",
              style: TextStyle(
                  color: Color.fromRGBO(144, 46, 46, 1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.7,
                crossAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: viewModel.product.length,
              itemBuilder: (BuildContext context, index) {
                return CardProduct(
                  image: viewModel.product[index].imageUrl[0],
                  productname: viewModel.product[index].product_name,
                  beforesale: viewModel.product[index].price,
                  aftersale: viewModel.product[index].sell,
                  like: viewModel.product[index].like,
                  isonsale: viewModel.product[index].on_saled,
                  widget: widget,
                  product: viewModel.product[index],
                  viewModel: viewModel,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
