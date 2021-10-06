import 'package:flutter/cupertino.dart';

class Product {
  final String? id;
  final String? title;
  final double? price;
  final String? description;
  final String? imageURL;
  bool? isFavourite;

  Product(
      {@required this.title,
      @required this.id,
      @required this.price,
      @required this.description,
      @required this.imageURL,
      this.isFavourite = false});
}
