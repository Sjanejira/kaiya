class Province {
  final String district;
  final String amphoe;
  final String province;
  final String zipcode;

  Province({
    this.district,
    this.amphoe,
    this.province,
    this.zipcode,
  });

  factory Province.fromJson(Map<String, dynamic> json) {
    return new Province(
      district: json['district'] as String,
      amphoe: json['amphoe'] as String,
      province: json['province'] as String,
      zipcode: json['zipcode'].toString(),
    );
  }
}
