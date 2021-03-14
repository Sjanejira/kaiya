class Product {
  bool show_product, hot_deal, on_saled;
  String pharmacy_username, product_name, brand, category, detail;
  int price, sell, like;

  Product(
      {this.show_product,
      this.hot_deal,
      this.on_saled,
      this.pharmacy_username,
      this.product_name,
      this.brand,
      this.category,
      this.price,
      this.detail,
      this.sell,
      this.like});

  Product.fromMap(Map<String, dynamic> map) {
    show_product = map['show'];
    hot_deal = map['hotdeal'];
    on_saled = map['onsaled'];
    pharmacy_username = map['pharmacy_name'];
    product_name = map['product_name'];
    brand = map['brand'];
    category = map['category'];
    price = map['price'];
    detail = map['detail'];
    sell = map['sell'];
    like = map['like'];
  }
}
