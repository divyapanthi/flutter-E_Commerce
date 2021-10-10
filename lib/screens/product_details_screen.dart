import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/models/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String routeName = "/product_detail_screen";

  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final selectedProduct = Provider.of<Products>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProduct.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedProduct.imageURL!,
                  fit: BoxFit.cover,
                ),
              ),
              tag: 'product$id',
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '\$ ${selectedProduct.price}',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                selectedProduct.description!,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
