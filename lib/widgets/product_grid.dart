import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/models/products.dart';
import 'package:flutter_e_commerce/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  final bool? isFavourite;

  const ProductGrid(this.isFavourite, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final products = isFavourite!
        ? Provider.of<Products>(context).favourites
        : Provider.of<Products>(context).items;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: const ProductItem(),
      ),
    );
  }
}
