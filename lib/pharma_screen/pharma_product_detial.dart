import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaiya/pharma_screen/add_product_page/product_model.dart';
import 'package:kaiya/pharma_screen/pharma_first_page/pharma_first_page_viewmodel.dart';

class PharProductDetail extends StatefulWidget {
  PharProductDetail({this.product, this.viewModel});
  static const String id = 'pharma_product_detail';
  final Product product;
  final PharmaFirstPageViewModel viewModel;
  @override
  _PharProductDetail createState() => _PharProductDetail();
}

class _PharProductDetail extends State<PharProductDetail> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.product.imageUrl
        .map((item) => Container(
              child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 5.h),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(226, 226, 226, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 10.0.w),
                            child: Text(
                              '${widget.product.imageUrl.indexOf(item).toInt() + 1} / ${widget.product.imageUrl.length}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 6.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
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
            title: const Text(
              'Product',
              style: TextStyle(color: Color.fromRGBO(19, 65, 83, 1.0)),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
            actions: [Icon(CupertinoIcons.ellipsis)],
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(
                bottom: 50.0.h,
              ),
              padding: EdgeInsets.only(bottom: 10.0.h),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                        viewportFraction: 1,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 35.0.w, top: 10.h),
                    child: Text(
                      widget.product.product_name,
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.h),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 35.0.w, top: 5.h),
                              child: Text(
                                "฿${widget.product.price}",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey[400]),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                  left: 6.0.w, right: 6.w, top: 5.h),
                              child: Text(
                                "฿${widget.product.sell}",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Color.fromRGBO(144, 46, 46, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5.h, right: 8.w),
                              child: Icon(
                                CupertinoIcons.share,
                                color: Color.fromRGBO(193, 193, 193, 1),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5.h, right: 30.w),
                              child: Icon(
                                CupertinoIcons.heart,
                                color: Color.fromRGBO(193, 193, 193, 1),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 30.0.w, top: 7.h, bottom: 7.h),
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10.h),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            CupertinoIcons.rocket,
                            color: Color.fromRGBO(46, 130, 139, 1),
                            size: 25.w,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            "Fast Delivery",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Color.fromRGBO(46, 130, 139, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    padding: EdgeInsets.only(left: 10.0.w, top: 10.h),
                    alignment: Alignment.centerLeft,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 35.0.w, top: 10.h, bottom: 5.h),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Product Detail",
                            style: TextStyle(
                              color: Color.fromRGBO(19, 65, 83, 1),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                              margin: EdgeInsets.only(
                                top: 13.0.h,
                              ),
                              padding: EdgeInsets.only(left: 35.0.w),
                              child: Text(
                                "Brand : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 13.0.h,
                              ),
                              padding: EdgeInsets.only(left: 5.0.w),
                              child: Text(
                                widget.product.brand,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                                  EdgeInsets.only(top: 13.0.h, bottom: 13.0.h),
                              padding: EdgeInsets.only(left: 35.0.w),
                              child: Text(
                                "Detail : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(46, 130, 139, 1),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.only(top: 13.0.h),
                                padding: EdgeInsets.only(
                                  bottom: 10.0.h,
                                  left: 5.0.w,
                                  right: 30.0.w,
                                ),
                                child: Text(
                                  widget.product.detail,
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                      top: 10.h,
                      bottom: 20.0.h,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 40.w, right: 10.w),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    widget.viewModel.pharProfile.imageUrl),
                              ),
                            ),
                            Container(
                              child: Text(
                                widget.viewModel.pharProfile.pharmacy_name,
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 65, 83, 1),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 35.w),
                          child: OutlineButton(
                            onPressed: () {
                              Navigator.popUntil(context,
                                  (Route<dynamic> route) => route.isFirst);
                            },
                            textColor: Color.fromRGBO(46, 130, 139, 1.0),
                            child: Text("View Shop"),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(46, 130, 139, 1.0),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
