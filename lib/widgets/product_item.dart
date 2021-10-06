import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String? title;
  final String? imageURL;


  const ProductItem(this.title, this.imageURL, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
          child: Image.network(imageURL!, fit: BoxFit.cover,),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(title!, textAlign: TextAlign.center,),
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {  },
            color: Colors.red,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {  },
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
