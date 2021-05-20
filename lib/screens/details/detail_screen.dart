import 'package:flutter/material.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/cart/cart_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../../compClass.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  final BuyProduct buyProduct;
  const DetailsScreen({Key key, this.product, this.buyProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: buildAppBar(context),
        body: Body(
          product: product,
          buyProduct: buyProduct,
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Cart(
                            product: retProduct(products[0]),
                          )));
            }),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
