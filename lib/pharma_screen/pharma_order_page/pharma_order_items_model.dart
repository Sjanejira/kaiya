class Items {
  String item_name;
  int item_price;

  Items({
    this.item_name,
    this.item_price,
  });

  Items.fromMap(Map<String, dynamic> map) {
    item_name = map['item_name'];
    item_price = map['item_price'];
  }
}
