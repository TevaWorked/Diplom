import 'package:flutter/material.dart';
import 'package:flutter_diplom/compClass.dart';
import 'package:flutter_diplom/constants.dart';
import 'package:flutter_diplom/models/BuyProduct.dart';
import 'package:flutter_diplom/screens/details/detail_screen.dart';
import '../../../models/Product.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  static BuyProduct buyProduct;

  const Body({Key key, buyProduct}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        ),
        // Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (
                context,
                index,
              ) =>
                  ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  product: products[index],
                                  buyProduct: retProduct(products[index]),
                                ))),
                  )),
        )),
      ],
    );
  }
}
