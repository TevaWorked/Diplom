import 'package:flutter/material.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/cart/components/body.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Cart extends StatelessWidget {
  final Product product;
  const Cart({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: Body(product: product),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      title: Text(
        "Корзина",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"), onPressed: () {}),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
