import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/models/products.dart';
import 'package:flutter_e_commerce/screens/product_details_screen.dart';
import 'package:flutter_e_commerce/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Venue',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.red,
          fontFamily: "Raleway",
        ),
        initialRoute: "/",
        routes: {
          "/" :(ctx) =>  const ProductOverviewScreen(),
          ProductDetailScreen.routeName : (ctx) => const ProductDetailScreen(),

        },
      ),
    );
  }
}
