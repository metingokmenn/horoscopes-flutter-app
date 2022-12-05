import 'package:flutter/material.dart';

class Horoscope {
  final String name;
  final String date;
  final String description;
  final String smallImage;
  final String largeImage;

  Horoscope(
      this.name, this.description, this.date, this.smallImage, this.largeImage);

  static Image prepareImage(String imagePath) {
    return Image.asset('assets/images/$imagePath');
  }
}
