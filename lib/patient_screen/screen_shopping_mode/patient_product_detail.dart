import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaiya/patient_widget/card_product_widget.dart';

class PatientProductDetail extends StatefulWidget {
  static const String id = 'patient_product_detail';

  @override
  _PatientProductDetail createState() => _PatientProductDetail();
}

final List<String> imgList = [
  'https://th-test-11.slatic.net/p/6dea56eca815fc0494b2e57bfc8677c7.png',
  'https://www.goodchoiz.com/content/images/thumbs/0026243_%E0%B9%89-%E0%B8%B4-500-100-%E0%B9%87.jpeg',
];

final List<Widget> imageSliders = imgList
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
                          '${imgList.indexOf(item).toInt() + 1} / ${imgList.length}',
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

class _PatientProductDetail extends State<PatientProductDetail> {
  int _current = 0;
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
        top: true,
        bottom: true,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 10.0,
            leading: IconButton(
              icon: const Icon(
                CupertinoIcons.chevron_back,
                size: 35.0,
                color: Colors.grey,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(CupertinoIcons.search,
                    size: 35.0, color: Colors.grey),
              ),
              IconButton(
                icon: const Icon(
                  CupertinoIcons.cart,
                  size: 35.0,
                  color: Colors.grey,
                ),
              ),
            ],
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
                      "Tyenol",
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
                                "฿145",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5.h, right: 8.w),
                              child: Icon(
                                CupertinoIcons.heart,
                                color: Color.fromRGBO(193, 193, 193, 1),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5.h, right: 30.w),
                              child: Icon(
                                CupertinoIcons.share,
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
                          Icons.local_shipping_outlined,
                          color: Color.fromRGBO(46, 130, 139, 1),
                          size: 24.0,
                        )),
                        Container(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            "Fast Delivery",
                            style: TextStyle(
                              fontSize: 15.sp,
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
                              fontSize: 15.sp,
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
                                  fontSize: 13.sp,
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
                                "Tyenol",
                                style: TextStyle(
                                  fontSize: 13.sp,
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
                                  fontSize: 13.sp,
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
                                  "Tylenol Extra Strength caplets with 500mg of acetaminophen"
                                  "help reduce fever and provide temporary relief of minor aches and pains."
                                  "From the #1 doctor-recommended brand of pain reliever,"
                                  "each caplet contains 500 mg of acetaminophen for effective,extra strength pain relief.",
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
                                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                              ),
                            ),
                            Container(
                              child: Text(
                                "KaiYa",
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
                          padding: EdgeInsets.only(left: 20.w, right: 5.w),
                          child: OutlineButton(
                            onPressed: () {
                              Navigator.popUntil(context,
                                  (Route<dynamic> route) => route.isFirst);
                            },
                            textColor: Color.fromRGBO(46, 130, 139, 1.0),
                            child: Text("Chat"),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(46, 130, 139, 1.0),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0.r),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
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
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 35.0.w, top: 10.h, bottom: 5.h),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "For Same Shop",
                      style: TextStyle(
                        color: Color.fromRGBO(46, 130, 139, 1),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardsaleProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          beforesale: 190,
                          aftersale: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                        CardnormalProduct(
                          image: 'asset/ms.png',
                          productname: "Tylenon 500 mg.",
                          price: 145,
                          isonsale: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
            ),
            notchMargin: 5,
            color: Colors.white,
            elevation: 10.0,
            child: Container(
              height: 70.h,
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 60.w,
                        padding: EdgeInsets.only(left: 30.0, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.storefront_outlined,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 60.w,
                        padding: EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.chat_bubble_text,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                              size: 33.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.popUntil(context,
                                (Route<dynamic> route) => route.isFirst);
                          },
                          textColor: Colors.white,
                          child: Text("Add Cart"),
                          color: Color.fromRGBO(46, 130, 139, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0.r),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.popUntil(context,
                                (Route<dynamic> route) => route.isFirst);
                          },
                          textColor: Colors.white,
                          child: Text("Buy Now"),
                          color: Color.fromRGBO(16, 65, 83, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0.r),
                          ),
                        ),
                      ),
                    ],
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
