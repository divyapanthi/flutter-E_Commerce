import 'package:flutter_e_commerce/models/product.dart';

class Products {

  List<Product> items = [
    Product(
        id: "first",
        title: "Watch",
        price: 2000.0,
        description: "The best watch that fits both classy and modern look.",
        imageURL: "https://th.bing.com/th/id/OIP.efdx8fjbnBq2VcBFQqA3KwHaJv?pid=ImgDet&rs=1",
        isFavourite: false,
    ),

    Product(
        id: "second",
        title: "shirt",
        price: 1000.0,
        description: "Mens Casual Shirt Grandad band Collar Slim Fit Cotton",
        imageURL: "https://th.bing.com/th/id/R.4622fd811cccce79f6f6baf7dc8e9c4d?rik=vqGaBvt%2bi4aeHg&riu=http%3a%2f%2fdrfashion.co.uk%2feshop%2f7138-thickbox_default%2fmens-casual-shirt-grandad-band-collar-slim-fit-cotton-white-royal-blue-finish-2495-casual-and-formal-shirts.jpg&ehk=kapMxiEKjakZPkjnSRWJaNi5%2fZJlBuCwchPZJqgfBvk%3d&risl=&pid=ImgRaw&r=0",
        isFavourite: false,
    ),

    Product(
        id: "third",
        title: "Laptop",
        price: 200000.0,
        description: "Laptop I3 INSPIRON 920P5",
        imageURL: "https://th.bing.com/th/id/OIP.EFZNZefIFwQUUgecd4nZEgHaGN?pid=ImgDet&rs=1",
        isFavourite: false,
    ),


    Product(
        id: "fourth",
        title: "Shoes",
        price: 4000.0,
        description: "",
        imageURL: "https://th.bing.com/th/id/R.e39c5b2bfa61b4b53e8453feb4d62d97?rik=1sjEaJxxR%2bXVlg&riu=http%3a%2f%2fwww.cstylejeans.com%2fwp-content%2fuploads%2f2016%2f02%2fmens-fashion-shoes-cheap.jpg&ehk=y7vNX%2bmlx0oeYlVpuE%2fzTyT5HpwOhQHq7dl38YVLVmg%3d&risl=&pid=ImgRaw&r=0",
        isFavourite: false,
    ),
  ];

}
