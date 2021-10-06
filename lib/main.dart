import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/screens/product_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Venue',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
        fontFamily: "Raleway",
      ),
      home: const ProductViewScreen(),
    );
  }
}
