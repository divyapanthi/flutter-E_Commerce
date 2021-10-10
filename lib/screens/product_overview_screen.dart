import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/widgets/product_grid.dart';

class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shop Venue",
          style: TextStyle(fontFamily: "Raleway"),
        ),
      ),
      body: const ProductGrid()
    );
  }
}
