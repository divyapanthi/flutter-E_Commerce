import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/models/cart_provider.dart';
import 'package:flutter_e_commerce/models/product.dart';
import 'package:flutter_e_commerce/models/products.dart';
import 'package:flutter_e_commerce/screens/product_details_screen.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadedProduct = Provider.of<Product>(context, listen: false);
    final cartProvider = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, ProductDetailScreen.routeName, arguments: loadedProduct.id);
          },
            child: Image.network(
          loadedProduct.imageURL!,
          fit: BoxFit.cover,
        )),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            loadedProduct.title!,
            textAlign: TextAlign.center,
          ),
          leading: Consumer<Product>(
            builder: (_, prod, child){
              return IconButton(
                icon: Icon(prod.isFavourite!
                    ? Icons.favorite
                    : Icons.favorite_outline),
                onPressed: () {
                  prod.toggleIsFavourite();
                },
                color: Colors.red,
              );
            }
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              cartProvider.addToCart(loadedProduct.id!, loadedProduct.title!, loadedProduct.price!);
            },
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
