class PharProfile {
  String pharmacy_name,
      username,
      password,
      telephone_number,
      location,
      imageUrl;

  PharProfile({
    this.pharmacy_name,
    this.username,
    this.password,
    this.telephone_number,
    this.imageUrl,
  });

  PharProfile.fromMap(Map<String, dynamic> map) {
    pharmacy_name = map['pharmacy_name'];
    username = map['username'];
    password = map['password'];
    telephone_number = map['telephone_number'];
    imageUrl = map['imageUrl'];
  }
}
