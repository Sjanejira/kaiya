import 'dart:io';

class ImagePickers {
  File image;

  ImagePickers({
    this.image,
  });

  ImagePickers.fromMap(Map<String, dynamic> map) {
    image = map['image'];
  }
}
