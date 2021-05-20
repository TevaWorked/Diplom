import 'package:flutter/material.dart';
import 'package:flutter_diplom/compClass.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/home/home_screen.dart';

import 'models/BuyProduct.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(
        buyProduct: retProduct(null),
      ),
    );
  }
}
