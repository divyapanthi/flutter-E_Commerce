import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/widgets/product_grid.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({Key? key}) : super(key: key);

  @override
  _ProductViewScreenState createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shop Venue",
          style: TextStyle(fontFamily: "Raleway"),
        ),
      ),
      body: ProductGrid()
    );
  }
}
