import 'package:flutter/material.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/models/Product.dart';
import 'package:flutter_diplom/screens/details/components/product_title_with_image.dart';
import 'package:flutter_svg/svg.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
  final BuyProduct buyProduct;
  const Body({Key key, this.product, this.buyProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  int amount = 1;
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      children: <Widget>[
                        Description(product: product),
                        SizedBox(height: 20),
                        CartCounter(
                          product: product,
                          buyProduct: buyProduct,
                        ),
                        SizedBox(height: 20),
                        AddToCart(
                          product: product,
                          buyProduct: buyProduct,
                          amount: amount,
                        ),
                      ],
                    ),
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
