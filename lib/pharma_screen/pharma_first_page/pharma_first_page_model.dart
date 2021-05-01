class PharProfile {
  String pharmacy_name,
      username,
      password,
      telephone_number,
      location,
      imageUrl,
      address,
      road,
      district,
      province,
      zipcode,
      email;

  PharProfile(
      {this.pharmacy_name,
      this.username,
      this.password,
      this.telephone_number,
      this.imageUrl,
      this.address,
      this.road,
      this.district,
      this.province,
      this.zipcode,
      this.email});

  PharProfile.fromMap(Map<String, dynamic> map) {
    pharmacy_name = map['pharmacy_name'];
    username = map['username'];
    password = map['password'];
    telephone_number = map['telephone_number'];
    imageUrl = map['imageUrl'];
    address = map['address'];
    road = map['road'];
    district = map['district'];
    province = map['province'];
    zipcode = map['zipcode'];
    email = map['email'];
  }
}
