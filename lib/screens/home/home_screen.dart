import "package:flutter/material.dart";
import 'package:flutter_diplom/compClass.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/cart/cart_screen.dart';
import "package:flutter_svg/svg.dart";

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  final BuyProduct buyProduct;
  const HomeScreen({Key key, this.buyProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(
        buyProduct: buyProduct,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "Товары",
        style: TextStyle(
            color: kTextColor, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Cart(
                          product: retProduct(products[0]),
                        )));
          },
        ),
        SizedBox(
          width: kDefaultPadding,
        )
      ],
    );
  }
}
