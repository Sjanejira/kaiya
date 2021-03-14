import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/phar_service2.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:kaiya/pharma_widget/card_product_widget.dart';
import 'package:provider/provider.dart';

class ProductTabBarView extends StatelessWidget {
  ProductTabBarView({this.widget, this.viewModel});
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
          Expanded(
            child: StreamBuilder(
                stream: Provider.of<PharMaService2>(context).getProduct(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    viewModel.product = snapshot.data;
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 20,
                      ),
                      shrinkWrap: true,
                      itemCount: viewModel.product.length,
                      itemBuilder: (BuildContext context, index) {
                        return CardProduct(
                          image: 'asset/ms.png',
                          productname: viewModel.product[index].product_name,
                          beforesale: viewModel.product[index].price,
                          aftersale: viewModel.product[index].sell,
                          like: viewModel.product[index].like,
                          isonsale: viewModel.product[index].on_saled,
                          widget: widget,
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
