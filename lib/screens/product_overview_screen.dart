import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/widgets/product_grid.dart';

enum FilterOptions { Favourites, All}

class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool _showFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shop Venue",
            style: TextStyle(fontFamily: "Raleway"),
          ),
          actions: <Widget>[
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favourites) {
                    //show fav
                    _showFavourites = true;
                  } else {
                    _showFavourites = false;
                  }
                });
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: FilterOptions.Favourites,
                    child: Text('Show Favourites')),
                const PopupMenuItem(
                    value: FilterOptions.All,
                    child: Text("Show All")),
              ],
            )
          ],
        ),
        body: ProductGrid(_showFavourites));
  }
}
