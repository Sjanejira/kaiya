class Payment {
  String bank_name, account_number, bank_account_holder, bank_imageUrl;
  bool show;

  Payment({
    this.bank_name,
    this.account_number,
    this.bank_account_holder,
    this.bank_imageUrl,
    this.show,
  });

  Payment.fromMap(Map<String, dynamic> map) {
    bank_name = map['bank_name'];
    account_number = map['account_number'];
    bank_account_holder = map['bank_account_holder'];
    bank_imageUrl = map['bank_imageUrl'];
    show = map['show'];
  }
}
