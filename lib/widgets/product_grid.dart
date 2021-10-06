// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/models/products.dart';
import 'package:flutter_e_commerce/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  Products products = Products();

  ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (ctx, index) => ProductItem(
          products.items[index].title, products.items[index].imageURL),
    );
  }
}
