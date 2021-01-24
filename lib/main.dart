import 'package:flutter/material.dart';
import 'package:kaiya/add_product_page.dart';
import 'package:kaiya/phar_first_page.dart';
import 'package:kaiya/pharma_product_detial.dart';

void main() {
  runApp(Kaiya());
}

class Kaiya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: PharProductDetail.id,
      routes: {
        PharWelcome.id: (context) => PharWelcome(),
        PharAddProduct.id: (context) => PharAddProduct(),
        PharProductDetail.id: (context) => PharProductDetail(),
      },
    );
  }
}
