import "package:collection/collection.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiya/pharma_screen/add_product_page/product_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_view.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';
import 'package:kaiya/pharma_tabbarview/category_product_show_page.dart';

class CategoryTabBarView extends StatelessWidget {
  CategoryTabBarView({this.widget, this.viewModel});
  final PharWelcome widget;
  final PharmaFirstPageViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    final groupCategory =
        groupBy(viewModel.product, (Product product) => product.category);
    final listCategory = groupCategory.keys.toList();
    print(listCategory);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: Column(
        children: [
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryShowPage(
                              viewModel: viewModel,
                              category: listCategory[index],
                              widget: widget,
                            )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.tag,
                            color: Color.fromRGBO(19, 65, 83, 1),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text(
                              listCategory[index],
                              style: TextStyle(
                                color: Color.fromRGBO(19, 65, 83, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        color: Color.fromRGBO(193, 193, 193, 1),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 5.h),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
              itemCount: listCategory.length),
        ],
      ),
    );
  }
}
